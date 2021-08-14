/// @description Insert description here
// You can write your code in this editor

enum RangedEnemyState {
	IDLE,
	WANDER,
	RANGED_ATTACK,
	HIT,
	DIE,
	WAIT
}

eState = RangedEnemyState.IDLE;
tilemap = layer_tilemap_get_id("Wall")

counter = 0;
e_spd = 0.8;

my_dir = irandom_range(0,359);
moveX = lengthdir_x(e_spd, my_dir);
moveY = lengthdir_y(e_spd, my_dir);

e_hp = 15;

cd = 0;
cdValue = 75;

pHitByAttack = ds_list_create();