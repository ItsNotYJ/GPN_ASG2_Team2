/// @description Insert description here
// You can write your code in this editor

enum EnemyState {
	IDLE,
	WANDER,
	ALERT,
	ATTACK,
	HIT,
	DIE,
	WAIT
}

eState = EnemyState.IDLE;
tilemap = layer_tilemap_get_id("Wall")

counter = 0;
e_spd = 0.8;

my_dir = irandom_range(0,359);
moveX = lengthdir_x(e_spd, my_dir);
moveY = lengthdir_y(e_spd, my_dir);

e_hp = 15;

pHitByAttack = ds_list_create();