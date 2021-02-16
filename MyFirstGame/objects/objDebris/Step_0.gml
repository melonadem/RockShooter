image_yscale = image_xscale;
image_xscale -= decFactor;
image_alpha -= decFactor;
if(image_alpha <= 0){
	instance_destroy();
}
