/// @description Insert description here
// You can write your code in this editor
instance_destroy();
with(other){
	instance_destroy();
	if(sprite_index == sprBigRocks){
		repeat(irandom_range(2,5)){
			var newRock = instance_create_layer(x,y,"Instances",objAsteroid);
			newRock.sprite_index = sprMidRocks;
			newRock.speed = 2;
		}
		global.gameScore += 90;
	}
	else if (sprite_index == sprMidRocks){
		repeat(irandom_range(2,5)){
			var newRock = instance_create_layer(x,y,"Instances",objAsteroid);
			newRock.sprite_index = sprSmallRocks;
			newRock.speed = 2;
		}
		global.gameScore += 40;
	}
	createDebris(0, 360, irandom_range(6,16), 0, 0.8, 0.03);
	global.gameScore += 10;
}