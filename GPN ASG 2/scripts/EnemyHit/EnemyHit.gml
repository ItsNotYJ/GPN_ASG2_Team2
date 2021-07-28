// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyHit(damage){
	hp -= damage;
	dir = point_direction(o_player.x,o_player.y, x, y)
	dis = 75;
	
	x += lengthdir_x(dis, dir);
	y += lengthdir_y(dis, dir);
	
	sprite_index = s_enemy_hit;
}