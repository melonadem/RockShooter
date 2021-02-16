/// @description Insert description here
//thank you gms tutorials
if(room == rmGame){
repeat(5)
{

var xx = choose(
	irandom_range(0, room_width*0.33),
	irandom_range(room_width*0.66, room_width));
var yy = choose(
	irandom_range(0, room_height*0.33),
	irandom_range(room_height*0.66, room_height));
	
	instance_create_layer(xx, yy, "Instances", objAsteroid);
}
	alarm[0] = second;
}