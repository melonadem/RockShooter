/// @description Drawing text and such.
w = c_white;
ong = make_color_rgb(255, 192, 0);

if(global.gameScore >= global.highScore)
{
	c = make_color_rgb(255, 192, 0);
}
else
{
	c = c_white;
}

switch(room)
{
	case rmTitle:
		//Draw title screen.
		draw_set_halign(fa_center);
		draw_text_transformed_color(room_width/2, 192,
		"Rock Shooter",4,4,0,ong,ong,ong,ong,1);
		
		draw_text_transformed_color(room_width/2, 262,
		"HIGH SCORE "+string(global.highScore),1.5,1.5,0,w,w,w,w,1);
		
		draw_text_transformed_color(room_width/2, room_height/2,
		"INSERT COIN",1.5,1.5,0,w,w,w,w,1);
		
		draw_text_transformed_color(room_width/2, 176,
		"MelonadeM's FIRST GAME EVER",1,1,0,w,w,w,w,1);
		
		draw_set_halign(fa_left);
		break;
	case rmGame:
		//Draw a bunch of video game stuff.
		draw_text_transformed_color(24,24,"HISCORE:"+string(global.highScore),1,1,0,c,c,c,c,1);
		draw_text_transformed_color(24,48,"  SCORE:"+string(global.gameScore),1,1,0,c,c,c,c,1);
		draw_text_transformed_color(24,72,"  LIVES:"+string(global.livesRemaining),1,1,0,w,w,w,w,1);
		
		/* Ready text before respawning.
		 * Relying on objShip not existing. As soon as it spawns,
		 * this message will be gone.
		 * If no lives are left, display a gameover text.
		 */
		if (!instance_exists(objShip)) 
		{
			if (global.livesRemaining > 0) 
			{
				draw_set_halign(fa_center);
				draw_text_transformed_color(room_width/2, 262, 
				"READY?\n PRESS SPACE!",1,1,0,w,w,w,w,deathTimer/60);
				draw_set_halign(fa_left);
			} 
			else 
			{
				draw_set_halign(fa_center);
				draw_text_transformed_color(room_width/2, 262, 
				"GAME OVER!",1,1,0,w,w,w,w,1);
				draw_text_transformed_color(room_width/2, 286,
				"Your SCORE: "+string(global.gameScore),1,1,0,c,c,c,c,deathTimer/60);
				draw_set_halign(fa_left);
			}
		}
		break;
}