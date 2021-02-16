if(room == rmGame && instance_exists(objShip)){
	if(choose(0,1) == 0){
		var xx = choose(0, room_width);
		var yy = random_range(0, room_height);
	} else {
		var xx = random_range(0, room_width);
		var yy = choose(0, room_height);
	}
	instance_create_layer(xx, yy, "Instances", objAsteroid);
}
alarm[0] = 4*second;