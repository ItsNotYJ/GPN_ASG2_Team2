// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BossStateAlert(){
	sprite_index = s_boss_idle;
	if(global.alive)
	{
		counter += 1;
		
		my_dir = point_direction(x, y, o_player.x, o_player.y);

		moveX = lengthdir_x(db_spd, my_dir);
		moveY = lengthdir_y(db_spd, my_dir);
	
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
		
		if(collision_circle(x, y, 250, o_player, false, false) && counter >= room_speed * 1)
		{
			var ran = irandom_range(0,1);
			if (ran == 0)
			{
				BossSpell(spellDir, spellSpd);
				
				if (spellDir == 0)
					spellDir = 1;
				else if (spellDir == 1)
					spellDir = 0;
				
				counter = 0;
			}
		}
		
		if(collision_circle(x, y, 45, o_player, false, false))
			dbState = DemonBossState.ATTACK;
		
		if(sign(lengthdir_x(db_spd, my_dir)) > 0)
			image_xscale = -1;
		else
			image_xscale = 1;
	}
}