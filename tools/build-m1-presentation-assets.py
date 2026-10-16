"""Build code-drawn HUD textures and import the user's reference portal.

Run at repository root with Python packages Pillow and mpyq available.
No reference game scripts are executed. Existing IMP entries are preserved.
"""
from pathlib import Path
from types import SimpleNamespace
from datetime import datetime
from PIL import Image, ImageDraw
import hashlib
import io
import json
import struct
import mpyq

root = Path("map/game_root")
output = root / "war3mapImported/jzr_ui"
portal_dir = root / "war3mapImported/jzr_portal"
output.mkdir(parents=True, exist_ok=True)
portal_dir.mkdir(parents=True, exist_ok=True)
backup = Path("map/backup") / ("m1-presentation-" + datetime.now().strftime("%Y%m%d-%H%M%S"))
backup.mkdir(parents=True, exist_ok=True)
generated = []

def save(path, content):
    if path.exists() and path.read_bytes() != content:
        prior = backup / path.relative_to(root)
        prior.parent.mkdir(parents=True, exist_ok=True)
        prior.write_bytes(path.read_bytes())
    path.write_bytes(content)
    generated.append(path)

def rounded(name, width, height, radius):
    scale = 4
    image = Image.new("RGBA", (width * scale, height * scale))
    draw = ImageDraw.Draw(image)
    # Solid black inside; a restrained warm gray rim and transparent corners.
    draw.rounded_rectangle((0, 0, width*scale-1, height*scale-1), radius*scale, fill=(112, 105, 88, 255))
    draw.rounded_rectangle((scale, scale, (width-1)*scale-1, (height-1)*scale-1),
                           (radius-1)*scale, fill=(0, 0, 0, 255))
    image = image.resize((width, height), Image.Resampling.LANCZOS)
    # Warcraft III texture dimensions stay powers of two; UV stretch restores
    # the intended panel aspect ratio and rounded-corner shape in game.
    power_width = 1 << (width-1).bit_length()
    power_height = 1 << (height-1).bit_length()
    image = image.resize((power_width, power_height), Image.Resampling.LANCZOS)
    data = io.BytesIO()
    image.save(data, format="TGA", compression=None)
    save(output / name, data.getvalue())

rounded("header.tga", 768, 56, 10)
rounded("center.tga", 512, 106, 16)
for count in range(1, 5):
    height = round(768 * ((0.031 + count * 0.017) / 0.246) * 0.75)
    rounded(f"players_{count}.tga", 768, height, 12)
for direction in ("up", "down"):
    image = Image.new("RGBA", (256, 256))
    draw = ImageDraw.Draw(image)
    for dy in (-6, 6):
        points = [(17, 37+dy), (32, 23+dy), (47, 37+dy)]
        if direction == "down": points = [(x, 64-y) for x, y in points]
        draw.line([(x*4, y*4) for x, y in points], fill=(231, 206, 147, 255), width=18, joint="curve")
    image = image.resize((64, 64), Image.Resampling.LANCZOS)
    data = io.BytesIO(); image.save(data, format="TGA", compression=None)
    save(output / f"arrow_{direction}.tga", data.getvalue())

source = Path("D:/war3/刷不停的怪.w3x")
source_bytes = source.read_bytes()
mpq_offset = source_bytes.find(b"MPQ\x1a")
assert mpq_offset >= 0
archive = mpyq.MPQArchive(io.BytesIO(source_bytes[mpq_offset:]), listfile=False)
lookup = archive.get_hash_table_entry
candidate = None
candidate_block = None
for index, block in enumerate(archive.block_table):
    archive.get_hash_table_entry = lambda _, index=index: SimpleNamespace(block_table_index=index)
    try: content = archive.read_file("_")
    except (RuntimeError, NotImplementedError, struct.error): continue
    if content and content.startswith(b"MDLX") and content[24:104].split(b"\0")[0] == b"ShimmeringPortal":
        assert candidate is None, "Reference contains multiple portal candidates; inspect before selecting."
        candidate, candidate_block = content, index
archive.get_hash_table_entry = lookup
assert candidate is not None
model = bytearray(candidate)
at = model.index(b"TEXS")
size = struct.unpack_from("<I", model, at+4)[0]
dependencies = []
for index, pos in enumerate(range(at+8, at+8+size, 268)):
    original = bytes(model[pos+4:pos+264]).split(b"\0")[0].decode("ascii")
    if not original: continue
    texture = archive.read_file(original)
    if texture:
        relative = f"war3mapImported\\jzr_portal\\texture_{index:02d}.blp"
        save(root / relative.replace("\\", "/"), texture)
        model[pos+4:pos+264] = relative.encode("ascii").ljust(260, b"\0")
        dependencies.append({"source": original, "target": relative, "sha256": hashlib.sha256(texture).hexdigest()})
    else:
        # Keep native references; verify they exist in the local runtime archives.
        found = False
        for archive_name in ("war3.mpq", "War3x.mpq", "War3Patch.mpq", "War3xLocal.mpq"):
            native = mpyq.MPQArchive("D:/war3/Warcraft III Frozen Throne/" + archive_name, listfile=False)
            if native.read_file(original): found = True; break
        if not found and original.lower().endswith("shimmeringportal\\white32.blp"):
            # Both the reference and local native archives omit this old white placeholder.
            relative = "war3mapImported\\jzr_portal\\white32.tga"
            data = io.BytesIO(); Image.new("RGBA", (32,32), (255,255,255,255)).save(data, format="TGA", compression=None)
            save(root / relative.replace("\\", "/"), data.getvalue())
            model[pos+4:pos+264] = relative.encode("ascii").ljust(260,b"\0")
            dependencies.append({"source":original,"target":relative,"whitePlaceholderFallback":True})
        else:
            assert found, f"Missing portal texture: {original}"
            dependencies.append({"source": original, "native": True})
save(portal_dir / "reference_portal.mdx", bytes(model))

imp = root / "war3map.imp"
before = imp.read_bytes()
version, count = struct.unpack_from("<II", before)
pos = 8; entries = []
for _ in range(count):
    flag = before[pos]; end = before.index(0, pos+1)
    entries.append((flag, before[pos+1:end])); pos = end+1
assert pos == len(before)
prior_names = {name.decode("utf8").replace("/", "\\").lower() for _, name in entries}
for path in generated:
    name = str(path.relative_to(root)).replace("/", "\\")
    if name.lower() not in prior_names:
        entries.append((13, name.encode("utf8"))); prior_names.add(name.lower())
after = struct.pack("<II", version, len(entries)) + b"".join(bytes([flag])+name+b"\0" for flag, name in entries)
assert after[8:8+len(before)-8] == before[8:], "Existing imports changed"
(backup / "war3map.imp").write_bytes(before)
imp.write_bytes(after)
manifest = {
    "referenceMap": str(source), "referenceMapSha256": hashlib.sha256(source_bytes).hexdigest(),
    "referencePortalBlock": candidate_block, "referencePortalSha256": hashlib.sha256(candidate).hexdigest(),
    "modelChange": "Only TEXS path slots rewritten to private import names; all geometry, animations and colors retained.",
    "portalDependencies": dependencies,
    "uiStyle": "Code-drawn opaque black interiors, warm gray 1px rim, transparent rounded corners; RGBA TGA.",
    "files": {str(path.relative_to(root)).replace("\\", "/"): hashlib.sha256(path.read_bytes()).hexdigest() for path in generated},
    "importEntriesAdded": len(entries)-count,
}
save(root / "solar_asset/m1-presentation-assets.json", (json.dumps(manifest, ensure_ascii=False, indent=2)+"\n").encode("utf8"))
print(f"Built {len(generated)-1} presentation assets; appended {len(entries)-count} imports; preserved {count} original imports.")
print(f"Reference portal: block {candidate_block}, 9 original private textures plus 1 white-placeholder fallback.")
