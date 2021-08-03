// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateFree(){
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
		image_xscale = -1;	
	}
	
	var _oldSprite = sprite_index;
	if(inputMagnitude != 0)
	{
		direction = inputDirection
		if(keyboard_check(ord("D")))
		{
			sprite_index = s_player_walk_left;
			image_xscale = -1;
		}
		else if(keyboard_check(ord("A")))
		{
			sprite_index = s_player_walk_left;
			image_xscale = 1;
		}
		else if(keyboard_check(ord("W")))
			sprite_index = s_player_walk_up;
		else if(keyboard_check(ord("S")))
			sprite_index = s_player_walk_down;
	}
	else 
	{
		if (sprite_index == s_player_walk_left)
			sprite_index = s_player_idle_left;
	
		if (sprite_index == s_player_walk_up)
			sprite_index = s_player_idle_up;
	
		if (sprite_index == s_player_walk_down)
			sprite_index = s_player_idle_down;
	}
	
	if (keyAttack)
		state = PLAYERSTATE.ATTACK_LIGHT;
}