/// @description General Variables
// You can write your code in this editor

mv_spd = 5;

alive = true;

state = PLAYERSTATE.FREE;
hitByAttack = ds_list_create();

enum PLAYERSTATE 
{
	FREE,
	ATTACK_LIGHT
}