// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function RangedEnemyStateAttack(){
	e_spd = 0;
	
	my_dir = point_direction(x, y, o_player.x, o_player.y);
	
	cd--;
	
	if(cd <= 0)
	{
			if(sign(lengthdir_x(e_spd, my_dir)) > 0)
			image_xscale = 1;
		else
			image_xscale = -1;
			
			
			cd = cdValue;
			with(instance_create_layer(x,y,"Bullets", o_arrow))
			{
				direction = point_direction(x,y, o_player.x, o_player.y);
				speed = 2;	
			}
	}
	else if(!collision_circle(x, y, 150, o_player, false, false))
	{
		eState = RangedEnemyState.IDLE;
		e_spd = 0.3;
	}
}