/* Movement block
 * This is very sketchy
 */
if(keyboard_check(vk_left)){
	image_angle += turnSpeed;
}
if(keyboard_check(vk_right)){
	image_angle -= turnSpeed;
}
if(keyboard_check(vk_up)){
	motion_add(image_angle, accelRate);
	createDebris(0.1, 8, 2, 180+image_angle, 0.5, 0.1);
}
else if(keyboard_check(vk_down)){
	motion_add(image_angle, -accelRate);
}
if(keyboard_check_pressed(vk_space)){
	var inst = instance_create_layer(x,y, "Instances",objBullet);
	inst.direction = image_angle;
	inst.image_angle = image_angle;
}

//Wrapping
move_wrap(true,true,sprite_width/2);