/// @description Insert description here
// You can write your code in this editor

enum EnemyStates {
	idle,
	wander,
	alert,
	attack
}

eState = EnemyStates.idle;

counter = 0;
spd = 0.5;

my_dir = irandom_range(0,359);
moveX = lengthdir_x(spd, my_dir);
moveY = lengthdir_y(spd, my_dir);

alive = true;

image_xscale = 3;