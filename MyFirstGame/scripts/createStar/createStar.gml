// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function createStar(size, intensity, decay, travelSpeed){
	var newStar = instance_create_layer(x,y,"Instances",objDebris);
	newStar.speed = travelSpeed;
	newStar.image_xscale = size;
	newStar.image_alpha = intensity;
	newStar.decFactor = decay;
}