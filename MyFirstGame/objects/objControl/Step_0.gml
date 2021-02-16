if (global.highScore < global.gameScore)
{
	global.highScore = global.gameScore;
	highScoreObtain = true;
}

instance_create_layer(irandom_range(0,room_width),irandom_range(0,room_height),"Instances",objStarSpawner);


if(!instance_exists(objShip))
{
	deathTimer++;
	if (global.livesRemaining > 0)
	{
		if(keyboard_check_pressed(vk_space) && deathTimer > 60)
		{
			instance_create_layer(room_width/2, room_height/2, "Instances", objShip);
			global.livesRemaining -= 1;
			deathTimer = 0
		}
	}
	else
	{
		if(highScoreObtain && random_range(0,100) > 92-(scoreDiff)){
			instance_create_layer(irandom_range(0,room_width),irandom_range(0,room_height),"Instances",objDebrisSpawner);
		}
		if(keyboard_check_pressed(vk_space) && deathTimer > 60)
		{
			instance_create_layer(room_width/2, room_height/2, "Instances", objShip);
			global.gameScore = 0;
			global.livesRemaining = 3;
			room_goto(rmTitle);
			deathTimer = 0
		}
	}
}

if(room == rmTitle && keyboard_check_pressed(vk_space))
{
	room_goto(rmGame);
}