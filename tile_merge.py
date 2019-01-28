from PIL import Image
import os
import numpy as np

H=1200
W=800
deltaH=0 #0.25*H
deltaW=0 #0.25*W
maxHeight=int(2*H+deltaH)
maxWidth=int(2*W+deltaW)

# path to images
path2content="images/inputs/content/"
path2img=os.path.join(path2content,"f7.jpg")


img=Image.open(path2img)
print(img.size)

img=img.resize((maxWidth,maxHeight),Image.LANCZOS)
print(img.size)
imgTemp0=img.resize((300,300),Image.LANCZOS)


# =============================================================================
# utils
# =============================================================================
def tileImage(img,delta,prefix=""):
    lefts= [0,W-deltaW,0        ,W-deltaW]
    uppers=[0,0       ,H-deltaH ,H-deltaH]
    rights=[W,maxWidth,W        ,maxWidth]
    lowers=[H,H       ,maxHeight,maxHeight]
    
    imgTiles=[]
    path2tiles=[]
    i=0
    for left,upper,right,lower in zip(lefts,uppers,rights,lowers):
        imgCrop=img.crop((left,upper,right,lower))    
        i+=1
        path2tile=os.path.join(path2content,prefix+str(i)+".jpg")
        print(path2tile)
        imgCrop.save(path2tile)
        print(imgCrop.size)
        imgTiles.append(imgCrop)
        path2tiles.append(path2tile)
    return imgTiles,path2tiles

def mergeImages(imgTiles,maxWidth,maxHeight):
    new_im = Image.new('RGB', (maxWidth, maxHeight))

    for i in range(4):
        box=(i%2*int(maxWidth/2),i//2*int(maxHeight/2))  
        img=imgTiles[i]
        new_im.paste(img,box)
    return new_im

def mergeImagesFromPath(path2Tiles,maxWidth,maxHeight):
    new_im = Image.new('RGB', (maxWidth, maxHeight))

    for i in range(4):
        path2tile=path2tiles[i]
        img=Image.open(path2tile)
        box=(i%2*int(maxWidth/2),i//2*int(maxHeight/2))  
        #img=imgTiles[i]
        new_im.paste(img,box)
    path2merge=os.path.join(path2content,"merged.png")
    new_im.save(path2merge)        
    return new_im


# tile image
imgTiles,path2tiles=tileImage(img,"subtle")

# merge images
path2img1=os.path.join(path2content,"subtle1_seated_at_iteration_100.png")
path2img2=os.path.join(path2content,"subtle2_seated_at_iteration_100.png")
path2img3=os.path.join(path2content,"subtle3_seated_at_iteration_100.png")
path2img4=os.path.join(path2content,"subtle4_seated_at_iteration_100.png")
path2tiles=[path2img1,path2img2,path2img3,path2img4]
imgMerged1=mergeImagesFromPath(path2tiles,maxWidth,maxHeight)
imgTemp1=imgMerged1.resize((300,300),Image.LANCZOS)

imgMerged2=mergeImages(imgTiles,maxWidth,maxHeight)
imgTemp2=imgMerged2.resize((300,300),Image.LANCZOS)


diff1=np.sum(np.array(imgTemp1)-np.array(imgTemp2))
diff2=np.sum(np.array(imgTemp0)-np.array(imgTemp2))
print(diff1,diff2)

