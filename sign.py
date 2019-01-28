
from PIL import Image
from PIL import ImageFont
from PIL import ImageDraw 
import easygui
import os

# get the file path
path2img = easygui.fileopenbox()
print("loading from"+ path2img)
img=Image.open(path2img)
draw = ImageDraw.Draw(img)
font = ImageFont.truetype("Beastfom.ttf", 50)

# draw.text((x, y),"Sample Text",(r,g,b))
w,h=img.size
draw.text((100, h-100),"Aksy",(0,0,0),font=font)
fileExt=os.path.basename(path2img).split(".")[1]
path2sign=path2img.replace("."+fileExt,"_sign."+fileExt)
img.save(path2sign)