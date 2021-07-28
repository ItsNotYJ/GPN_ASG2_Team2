// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateFree(){
	sprite_index = s_player_idle
	
	if (keyboard_check(ord("A"))) {
		x -= mv_spd;
		image_xscale = -2;
		sprite_index = s_player;
	}

	if (keyboard_check(ord("D"))) {
		x += mv_spd;
		image_xscale = 2;
		sprite_index = s_player;
	}

	if (keyboard_check(ord("W"))) {
		y -= mv_spd;	
		sprite_index = s_player;
	}

	if (keyboard_check(ord("S"))) {
		y += mv_spd;
		sprite_index = s_player;
	}
	
	if (keyAttack)
		state = PLAYERSTATE.ATTACK_LIGHT;
}