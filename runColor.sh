
# (‘nearest’, ‘lanczos’, ‘bilinear’, ‘bicubic’ or ‘cubic’).

image_size=850
content_weight=0.25
total_variation_weight=1e-4 #0.000085
num_iter=100
model="vgg16"
content_loss_type=0
rescale_image="True"
rescale_method="lanczos"
init_image="content"
preserve_color="False"
min_improvement=0.0

base_image_path="images/inputs/content/agriculture.jpg"

syle_image_paths="images/inputs/stylesArtApp/1669.jpg"



result_prefix="images/output/agriculture.png"


python color_transfer.py $base_image_path $result_prefix 









