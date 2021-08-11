// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyHit(damage){
	e_hp -= damage;
	
	if(e_hp > 0)
	{
	
	dir = point_direction(o_player.x, o_player.y, x, y)
	dis = 75;
	
	x += lengthdir_x(dis, dir);
	y += lengthdir_y(dis, dir);
	
	// Maybe add hit effects or sound effect in the future here
	
	}
	else
	{
		global.gold += 10;
		sprite_index = s_enemy_dead;
	}
}