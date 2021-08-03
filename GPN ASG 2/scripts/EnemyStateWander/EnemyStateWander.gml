// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyStateWander(){
	counter += 1;
	x += moveX;
	y += moveY;
	
	sprite_index = s_enemy_idle_wonder;
	if(counter >= room_speed * 2)
	{
		var change = choose(0, 1);
		switch(change)
		{		
			case 0: eState = EnemyState.IDLE;
			case 1:	my_dir = irandom_range(0,359);
				moveX = lengthdir_x(e_spd, my_dir);
				moveY = lengthdir_y(e_spd, my_dir);
				counter = 0;
		}
	}
	
	if(collision_circle(x, y, 200, o_player, false, false))
	{
		eState = EnemyState.ALERT;	
	}
	
	if(sign(moveX) > 0)
		image_xscale = 1;
	else
		image_xscale = -1;
}