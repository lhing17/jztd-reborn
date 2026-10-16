"""Run the generated M1 Lua in Lua 5.3, then verify routes against source WPM.

Prerequisites: a Lua build in out/m1/lua, Python packages lupa.
Run from the repository root: python tools/test-m1.py
This is offline verification, not a Warcraft III visual/playability test.
"""
from pathlib import Path
import json
import math
import struct
import hashlib
import io
from types import SimpleNamespace
from PIL import Image
import mpyq
from lupa.lua53 import LuaRuntime

runtime = LuaRuntime()
runtime.execute(Path("tools/test-m1.lua").read_text(encoding="utf-8"))
config = runtime.eval('require("game.config.M1Config").default')
terrain = Path("map/game_root/war3map.w3e").read_bytes()
offset = 13
ground_count = struct.unpack_from("<I", terrain, offset)[0]
offset += 4 + ground_count * 4
cliff_count = struct.unpack_from("<I", terrain, offset)[0]
offset += 4 + cliff_count * 4
width, height, origin_x, origin_y = struct.unpack_from("<IIff", terrain, offset)
pathing = Path("map/game_root/war3map.wpm").read_bytes()
pw, ph = struct.unpack_from("<II", pathing, 8)
layout = json.loads(Path("map/game_root/solar_asset/arena-layout.json").read_text(encoding="utf-8-sig"))

samples = 0
for player_id in range(4):
    route = config.route(config, player_id)
    spawn = (route.spawn.x, route.spawn.y)
    assert list(spawn) == layout["spawnPositions"][player_id]
    points = [spawn] + [(p.x, p.y) for p in route.points.values()]
    loop_point = route.points[route.loopStart + 1]
    assert route.loopStart == 7
    for start, end in zip(points, points[1:] + [(loop_point.x, loop_point.y)]):
        steps = max(1, math.ceil(math.dist(start, end) / 8))
        for step in range(steps + 1):
            x = start[0] + (end[0] - start[0]) * step / steps
            y = start[1] + (end[1] - start[1]) * step / steps
            # hfoo collision radius = 32. Check a square around every sample.
            for dx in (-32, 0, 32):
                for dy in (-32, 0, 32):
                    ix, iy = int((x + dx - origin_x) / 32), int((y + dy - origin_y) / 32)
                    assert 0 <= ix < pw and 0 <= iy < ph
                    assert pathing[16 + iy * pw + ix] & 2 == 0, (
                        f"P{player_id+1} blocked at {x+dx},{y+dy} segment {start}->{end}"
                    )
                    samples += 1
print(f"PASS: four mirrored routes, source spawn positions, {samples} WPM walkability samples including collision margin")

root = Path("map/game_root")
manifest = json.loads((root / "solar_asset/m1-presentation-assets.json").read_text(encoding="utf8"))
for name, expected in manifest["files"].items():
    assert hashlib.sha256((root / name).read_bytes()).hexdigest() == expected, name
for path in (root / "war3mapImported/jzr_ui").glob("*.tga"):
    image = Image.open(path).convert("RGBA")
    w,h = image.size
    assert w & (w-1) == 0 and h & (h-1) == 0
    if path.name.startswith(("header", "center", "players_")):
        assert image.getpixel((w//2,h//2)) == (0,0,0,255), path
        assert image.getpixel((0,0))[3] == 0, path
up=(root / "war3mapImported/jzr_ui/arrow_up.tga").read_bytes()
down=(root / "war3mapImported/jzr_ui/arrow_down.tga").read_bytes()
assert up != down
imp=(root / "war3map.imp").read_bytes();count=struct.unpack_from("<I",imp,4)[0];pos=8;names=set()
for _ in range(count):
    end=imp.index(0,pos+1);names.add(imp[pos+1:end].decode("utf8").lower());pos=end+1
assert pos==len(imp)
for name in manifest["files"]:assert name.replace("/","\\").lower() in names

# The portal is the reference's real asset, with only private texture-path slots changed.
source=Path(manifest["referenceMap"]).read_bytes()
assert hashlib.sha256(source).hexdigest()==manifest["referenceMapSha256"]
archive=mpyq.MPQArchive(io.BytesIO(source[source.index(b"MPQ\x1a"):]),listfile=False)
index=manifest["referencePortalBlock"]
archive.get_hash_table_entry=lambda _:SimpleNamespace(block_table_index=index)
original=bytearray(archive.read_file("_"))
current=bytearray((root / "war3mapImported/jzr_portal/reference_portal.mdx").read_bytes())
assert hashlib.sha256(original).hexdigest()==manifest["referencePortalSha256"]
assert len(original)==len(current)
at=original.index(b"TEXS");size=struct.unpack_from("<I",original,at+4)[0]
for pos in range(at+8,at+8+size,268):
    texture=bytes(current[pos+4:pos+264]).split(b"\0")[0].decode("ascii")
    if texture.startswith("war3mapImported\\jzr_portal\\"):assert (root / texture.replace("\\","/")).is_file()
    original[pos+4:pos+264]=bytes(260);current[pos+4:pos+264]=bytes(260)
assert original==current, "Portal geometry/animation/colors changed"
print("PASS: opaque black interiors, transparent rounded corners, power-of-two TGAs, all imports, reference portal geometry/animation preservation")

sect_manifest=json.loads((root / "solar_asset/sect-ui-assets.json").read_text(encoding="utf8"))
for name,expected in sect_manifest["files"].items():
    file=root/name
    assert hashlib.sha256(file.read_bytes()).hexdigest()==expected
    assert name.replace("/","\\").lower() in names
    asset=Image.open(file).convert("RGBA")
    w,h=asset.size
    assert w & (w-1)==0 and h & (h-1)==0
    if "/emblem_" not in name:
        assert asset.getpixel((w//2,h//2))[3]==255 and asset.getpixel((0,0))[3]==0
protected=json.loads(Path("out/sect-before/protected.json").read_text(encoding="utf-8-sig")) if Path("out/sect-before/protected.json").exists() else []
for record in protected:
    assert hashlib.sha256(Path(record["Path"]).read_bytes()).hexdigest().upper()==record["Hash"]
print("PASS: sect skin hashes/imports/power-of-two dimensions/opaque interiors; protected map files unchanged when session baseline available")
