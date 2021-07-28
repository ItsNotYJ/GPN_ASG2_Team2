// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateFree(){
	sprite_index = s_player_idle
	
	keyLeft = keyboard_check(ord("A"));
	keyRight = keyboard_check(ord("D"));
	keyUp = keyboard_check(ord("W"));
	keyDown = keyboard_check(ord("S"));
	
	inputDirection = point_direction(0,0,keyRight-keyLeft,keyDown-keyUp);
	inputMagnitude = (keyRight-keyLeft != 0) || (keyDown - keyUp != 0);
	
	hSpeed = lengthdir_x(inputMagnitude * mv_spd, inputDirection);
	vSpeed = lengthdir_y(inputMagnitude * mv_spd, inputDirection);
	
	PlayerCollision();
	
	
	if(keyRight > 0)
	{
		image_xscale = 2;	
	}
	
	var _oldSprite = sprite_index;
	if(inputMagnitude != 0)
	{
		direction = inputDirection
		sprite_index = s_player;
		if(keyboard_check(ord("D")))
		{
			image_xscale = 2;	
		}
		else if(keyboard_check(ord("A")))
		{
			image_xscale = -2;	
		}
	}
	else
	{
		sprite_index = s_player_idle;	
	}
	
	
	
	
	
	
	/*
	if (keyboard_check(ord("A")) && place_free(x - collisionSpeed, y)) {
		x -= mv_spd;
		image_xscale = -2;
		sprite_index = s_player;
	}

	if (keyboard_check(ord("D")) && place_free(x + collisionSpeed, y)) {
		x += mv_spd;
		image_xscale = 2;
		sprite_index = s_player;
	}

	if (keyboard_check(ord("W"))  && place_free(x, y - collisionSpeed)) {
		y -= mv_spd;	
		sprite_index = s_player;
	}

	if (keyboard_check(ord("S"))  && place_free(x, y + collisionSpeed)) {
		y += mv_spd;
		sprite_index = s_player;
	}
	*/
	
	if (keyAttack)
		state = PLAYERSTATE.ATTACK_LIGHT;
}