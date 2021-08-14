// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function RangedEnemyStateWander(){
	counter += 1;
	e_spd = 0.3;
	
	sprite_index = s_eyeball;
	if(counter >= room_speed * 2)
	{
		var change = choose(0, 1);
		switch(change)
		{		
			case 0: eState = RangedEnemyState.IDLE;
			case 1:	my_dir = irandom_range(0,359);
				moveX = lengthdir_x(e_spd, my_dir);
				moveY = lengthdir_y(e_spd, my_dir);
				counter = 0;
		}
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
	
	if(collision_circle(x, y, 150, o_player, false, false))
	{
		eState = RangedEnemyState.RANGED_ATTACK;	
	}
	
	if(sign(moveX) > 0)
		image_xscale = 1;
	else
		image_xscale = -1;
}