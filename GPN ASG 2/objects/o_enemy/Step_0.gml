/// @description Insert description here
// You can write your code in this editor

if(hp > 0)
{
	if(eState == EnemyStates.idle)
	{
		spd = 0.5;
		counter += 1;
	
		if(counter >= room_speed * 2)
		{
			var change = choose(0,1);
			switch(change)
			{
				case 0: eState = EnemyStates.wander;
				case 1: counter = 0; break;
			}
		}
		if(collision_circle(x,y,200,o_player,  false, false))
		{
			eState = EnemyStates.alert;	
		}
	
		//sprite_index = enemy wander sprite
	
	}
	else if(eState == EnemyStates.wander)
	{
		spd = 0.5;
		counter += 1;
		x += moveX;
		y += moveY;
	
		if(counter >= room_speed * 2)
		{
			var change = choose(0, 1);
			switch(change)
			{
				case 0: eState = EnemyStates.idle;
				case 1:
					my_dir = irandom_range(0,359);
					moveX = lengthdir_x(spd, my_dir);
					moveY = lengthdir_y(spd, my_dir);
					counter = 0;
			}
		}
	
		if(collision_circle(x, y, 200, o_player, false, false))
		{
			eState = EnemyStates.alert;	
		}
	
		if(sign(moveX) > 0)
		{
			image_xscale = 3;
		}
		else
		{
			image_xscale = -3;	
		}
	}
	else if(eState == EnemyStates.alert)
	{
		my_dir = point_direction(x, y, o_player.x, o_player.y)
		spd = 1.5;
		moveX = lengthdir_x(spd, my_dir);
		moveY = lengthdir_y(spd, my_dir);
		x += moveX;
		y += moveY;
	
		if(!collision_circle(x, y, 200, o_player, false, false))
		{
			spd = 0.5;
			eState = EnemyStates.idle;	
		}
	
		if(sign(moveX) > 0)
		{
			image_xscale = 3;
		}
		else
		{
			image_xscale = -3;	
		}
	
	}
	else if(eState == EnemyStates.attack)
	{

	}
}