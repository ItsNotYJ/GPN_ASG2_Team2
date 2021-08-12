enum DemonBossState {
	ALERT,
	ATTACK,
	DIE
}

dbState = DemonBossState.ALERT;
tilemap = layer_tilemap_get_id("Wall")

counter = 0;
db_spd = 0.6;

my_dir = irandom_range(0,359);
moveX = lengthdir_x(db_spd, my_dir);
moveY = lengthdir_y(db_spd, my_dir);

e_hp = 20;
ehp_max = e_hp;

global.demonBossDead = false;

dbHitByAttack = ds_list_create();