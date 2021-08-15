// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyHit(damage){
	e_hp -= damage;
	
	if(e_hp > 0)
	{
	
	dir = point_direction(o_player.x, o_player.y, x, y)
	dis = 25;
	
	if(room != BossRoom1)
	{
		moveX = lengthdir_x(dis, dir);
		moveY = lengthdir_y(dis, dir);
	}
	
	
	if(tilemap_get_at_pixel(tilemap, x + moveX, y))
	{
		x -= x mod 16;
		if(sign(moveX) == 1) x += 16 - 1;	
			moveX = 0;
	}
	
	
	x += moveX;
	if(tilemap_get_at_pixel(tilemap, x, y + moveY))
	{
		y -= y mod 16;
		if(sign(moveY) == 1) y += 16 - 1;	
			moveY = 0;
	}
	
	y += moveY;
	
	}
	else
	{	
		if (sprite_index == s_boss_idle || sprite_index == s_boss_attack)
		{
			sprite_index = s_boss_death;
		}
		
		if (sprite_index == s_enemy_attack || sprite_index == s_enemy_idle || sprite_index == s_enemy_idle_wonder)
		{
			sprite_index = s_enemy_dead;
		}
		if (sprite_index == s_eyeball)
		{
			sprite_index = s_eyeball_dead;
		}
	}
}