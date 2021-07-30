/// @description General Variables
// You can write your code in this editor

collisionMap = layer_tilemap_get_id(layer_get_id("Wall"));

mv_spd = 2.2;

alive = true;

state = PLAYERSTATE.FREE;
hitByAttack = ds_list_create();

enum PLAYERSTATE 
{
	FREE,
	ATTACK_LIGHT
}