
# (‘nearest’, ‘lanczos’, ‘bilinear’, ‘bicubic’ or ‘cubic’).

image_size=800
content_weight=0.025
total_variation_weight=1e-4 #0.000085
num_iter=100
model="vgg19"
content_loss_type=0
rescale_image="True"
rescale_method="lanczos"
init_image="content"
preserve_color="False"
min_improvement=0.0

#base_image_path="images/inputs/content/mra.jpg"
#base_image_path="images/inputs/content/couple2.jpg"
#base_image_path="images/inputs/content/landscape1.jpg"
#base_image_path="images/inputs/content/subtle4.jpg"
#base_image_path="images/inputs/content/abdy2.jpg"
#base_image_path="images/inputs/content/daenerys.jpg"
#base_image_path="images/inputs/content/mrahhs.jpg"
#base_image_path="images/inputs/content/benches.jpg"
#base_image_path="images/inputs/content/benchbikini.jpg"
#base_image_path="images/inputs/content/affair.jpg"
#base_image_path="images/inputs/content/gazal.jpg"
#base_image_path="images/inputs/content/bedroom.jpg"
#base_image_path="images/inputs/content/snow.jpg"
#base_image_path="images/inputs/content/snow2.jpg"
#base_image_path="images/inputs/content/adult.jpg"
#base_image_path="images/inputs/content/eifel.jpg"
#base_image_path="images/inputs/content/budha.jpg"
base_image_path="images/inputs/content/architecture.jpg"



#syle_image_paths="images/inputs/style/picasso.jpg"
#syle_image_paths="images/inputs/style/misty.jpg"
#syle_image_paths="images/inputs/style/housepond.jpg"
#syle_image_paths="images/inputs/style/seated-nude.jpg"
#syle_image_paths="images/inputs/style/woman-with-hat-matisse.jpg"
#syle_image_paths="images/inputs/style/vincent.jpg"
#syle_image_paths="images/inputs/style/rain-princess.jpg"
#syle_image_paths="images/inputs/style/Mona.jpg"
#syle_image_paths="images/inputs/style/japanese_flower.jpg"
#syle_image_paths="images/inputs/stylesArtApp/romance.jpg"
#syle_image_paths="images/inputs/stylesArtApp/4719.jpg"
#syle_image_paths="images/inputs/stylesArtApp/family.jpg"
#syle_image_paths="images/inputs/stylesArtApp/4103.jpg"
#syle_image_paths="images/inputs/style/youngWoman.jpg"
#syle_image_paths="images/inputs/stylesArtApp/4686.jpg"
#syle_image_paths="images/inputs/stylesArtApp/4087.jpg"
#syle_image_paths="images/inputs/stylesArtApp/4715.jpg"
#syle_image_paths="images/inputs/stylesArtApp/2055.jpg"
#syle_image_paths="images/inputs/stylesArtApp/4686.jpg"
#syle_image_paths="images/inputs/stylesArtApp/1667.jpg"
syle_image_paths="images/inputs/stylesArtApp/1.jpg"

#720
#1159


result_prefix="images/output/architecture-style"
given_image_path="images/output/f7seadatd.png"

python INetwork.py $base_image_path $syle_image_paths $result_prefix $given_image_path \
--image_size $image_size \
--content_weight $content_weight \
--init_image $init_image \
--rescale_image $rescale_image \
--model $model \
--rescale_method $rescale_method \









