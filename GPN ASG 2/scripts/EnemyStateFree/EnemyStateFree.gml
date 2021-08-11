// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyStateFree(){
	counter += 1;
	
	if(counter >= room_speed * 2)
	{
		var change = choose(0,1);
		switch(change)
		{
			case 0: eState = EnemyState.WANDER;
			case 1: counter = 0; break;
		}
	}
	
	if(collision_circle(x, y, 100, o_player, false, false))
	{
		eState = EnemyState.ALERT;	
	}
}