// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyStateAlert(){
	if(o_player.alive)
	{
	my_dir = point_direction(x, y, o_player.x, o_player.y);
	
	e_spd = 3;
	moveX = lengthdir_x(e_spd, my_dir);
	moveY = lengthdir_y(e_spd, my_dir);
	
	x += moveX;
	y += moveY;
	
	if(!collision_circle(x, y, 200, o_player, false, false))
	{
		e_spd = 0.5;
		eState = EnemyState.IDLE;	
	}
	
	if(collision_circle(x, y, 45, o_player, false, false))
	{
		eState = EnemyState.ATTACK;
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
	else
	{
		eState = EnemyState.IDLE;	
	}
}