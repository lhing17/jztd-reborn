"""Build original, code-drawn sect catalogue skins. No game/reference assets copied."""
from pathlib import Path
from PIL import Image, ImageDraw
import hashlib
import json
import math
import struct

root = Path('map/game_root')
out = root / 'war3mapImported/jzr_sect'
out.mkdir(parents=True, exist_ok=True)
files = []

def save(name, image):
    path = out / (name + '.tga')
    image.save(path, compression=None)
    files.append(path)

def skin(name, size, radius, top, bottom, border, ornament=False):
    w, h = size
    image = Image.new('RGBA', size)
    mask = Image.new('L', size)
    md = ImageDraw.Draw(mask)
    md.rounded_rectangle((0, 0, w-1, h-1), radius, fill=255)
    draw = ImageDraw.Draw(image)
    for y in range(h):
        t = y/max(1, h-1)
        color = tuple(round(a*(1-t)+b*t) for a,b in zip(top,bottom))
        draw.line((0,y,w,y), fill=color+(255,))
    image.putalpha(mask)
    draw.rounded_rectangle((1,1,w-2,h-2), radius, outline=border+(255,), width=2)
    draw.rounded_rectangle((7,7,w-8,h-8), max(1,radius-4), outline=(border[0]//3,border[1]//3,border[2]//3,255))
    if ornament:
        # Restrained mountain silhouette and corner filigree; no baked-in text.
        draw.polygon([(w*.39,h*.90),(w*.55,h*.52),(w*.63,h*.72),(w*.77,h*.36),(w*.98,h*.90)],fill=(25,34,36,255))
        draw.polygon([(w*.51,h*.90),(w*.68,h*.63),(w*.79,h*.77),(w*.87,h*.59),(w*.97,h*.90)],fill=(32,41,42,255))
        for x,y,sx,sy in [(18,18,1,1),(w-19,18,-1,1),(18,h-19,1,-1),(w-19,h-19,-1,-1)]:
            draw.line([(x+sx*36,y),(x,y),(x,y+sy*28)], fill=border+(255,), width=2)
            draw.polygon([(x+sx*9,y+sy*6),(x+sx*14,y+sy*11),(x+sx*9,y+sy*16),(x+sx*4,y+sy*11)],fill=border+(255,))
    save(name,image)

skin('panel',(1024,512),18,(25,33,37),(9,14,19),(141,119,73),True)
skin('detail',(512,512),12,(27,34,37),(14,21,27),(73,79,77),True)
skin('tile',(256,256),14,(36,44,48),(19,26,32),(78,86,84))
skin('tile_selected',(256,256),14,(62,57,42),(29,32,32),(226,190,115))
skin('button',(512,128),12,(161,122,59),(87,61,29),(224,190,120))
skin('button_disabled',(512,128),12,(55,59,59),(32,38,41),(82,87,85))
skin('tab',(256,64),8,(42,49,51),(26,33,38),(85,91,86))
skin('tab_selected',(256,64),8,(90,78,49),(46,45,38),(187,156,94))

for name,color in [('shaolin',(230,193,122)),('wudang',(145,207,210)),('emei',(220,177,205))]:
    image=Image.new('RGBA',(256,256))
    draw=ImageDraw.Draw(image)
    draw.ellipse((16,16,240,240),fill=(17,27,32,255),outline=color+(255,),width=3)
    draw.ellipse((26,26,230,230),outline=tuple(c//3 for c in color)+(255,),width=2)
    if name=='shaolin':
        draw.line((128,57,128,203),fill=color+(255,),width=9)
        draw.ellipse((97,50,159,112),outline=color+(255,),width=7)
        draw.arc((78,66,111,111),0,300,fill=color+(255,),width=5)
        draw.arc((145,66,178,111),-120,180,fill=color+(255,),width=5)
        draw.line((104,180,152,180),fill=color+(255,),width=6)
    elif name=='wudang':
        draw.ellipse((63,63,193,193),fill=color+(255,))
        draw.pieslice((63,63,193,193),90,270,fill=(17,27,32,255))
        draw.ellipse((96,63,160,128),fill=color+(255,))
        draw.ellipse((96,128,160,193),fill=(17,27,32,255))
        draw.ellipse((120,86,136,102),fill=(17,27,32,255))
        draw.ellipse((120,151,136,167),fill=color+(255,))
        draw.ellipse((63,63,193,193),outline=color+(255,),width=3)
    else:
        for angle in [-60,-30,0,30,60]:
            a=math.radians(angle)
            tip=(128+math.sin(a)*76,159-math.cos(a)*94)
            side=(128+math.sin(a+0.6)*56,159-math.cos(a+0.6)*48)
            other=(128+math.sin(a-0.6)*56,159-math.cos(a-0.6)*48)
            draw.line([(128,177),side,tip,other,(128,177)],fill=color+(255,),width=5,joint='curve')
        draw.arc((74,152,182,195),0,180,fill=color+(255,),width=5)
    save('emblem_'+name,image)

imp=root/'war3map.imp'
before=imp.read_bytes()
backup=Path('out/sect-before/war3map.imp')
if not backup.exists():
    backup.parent.mkdir(parents=True,exist_ok=True)
    backup.write_bytes(before)
version,count=struct.unpack_from('<II',before)
pos=8; names=set()
for _ in range(count):
    end=before.index(0,pos+1)
    names.add(before[pos+1:end].decode('utf8').replace('/','\\').lower())
    pos=end+1
assert pos==len(before)
added=[]
for path in files:
    name=str(path.relative_to(root)).replace('/','\\')
    if name.lower() not in names:
        added.append(bytes([13])+name.encode('utf8')+b'\0')
        names.add(name.lower())
imp.write_bytes(struct.pack('<II',version,count+len(added))+before[8:]+b''.join(added))
manifest={'source':'Original code-drawn skins and emblems; rebuild with tools/build-sect-ui.py.',
          'files':{str(p.relative_to(root)).replace('\\','/'):hashlib.sha256(p.read_bytes()).hexdigest() for p in files}}
(root/'solar_asset/sect-ui-assets.json').write_text(json.dumps(manifest,ensure_ascii=False,indent=2)+'\n',encoding='utf8')
preview=Image.new('RGB',(1100,640),(10,15,19))
preview.paste(Image.open(out/'panel.tga').resize((1060,600)),(20,20))
for i,name in enumerate(['shaolin','wudang','emei']):
    tile=Image.open(out/('tile_selected.tga' if i==0 else 'tile.tga')).resize((160,160))
    preview.paste(tile,(60+i*180,150),tile)
    emblem=Image.open(out/('emblem_'+name+'.tga')).resize((110,110))
    preview.paste(emblem,(85+i*180,165),emblem)
Path('out/sect-ui').mkdir(parents=True,exist_ok=True)
preview.save('out/sect-ui/skin-preview.png')
print(f'Built {len(files)} original sect UI assets; appended {len(added)} imports.')
