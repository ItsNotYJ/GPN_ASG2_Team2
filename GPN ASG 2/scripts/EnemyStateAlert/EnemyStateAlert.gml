// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyStateAlert(){
	sprite_index = s_enemy_idle_wonder;
	if(global.alive)
	{
		my_dir = point_direction(x, y, o_player.x, o_player.y);
	
		e_spd = 0.8;
		moveX = lengthdir_x(e_spd, my_dir);
		moveY = lengthdir_y(e_spd, my_dir);
	
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
	
		if(!collision_circle(x, y, 100, o_player, false, false))
		{
			eState = EnemyState.IDLE;	
			e_spd = 0.3;
		}
	
		if(collision_circle(x, y, 14, o_player, false, false))
			eState = EnemyState.ATTACK;
		
		if(sign(lengthdir_x(e_spd, my_dir)) > 0)
			image_xscale = 1;
		else
			image_xscale = -1;
	}
	else
		eState = EnemyState.WANDER;	
		e_spd = 0.3;
}