// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateAttackLight(){
	mv_spd = 0;
	
	// Start of the attack
	if (sprite_index != s_player_attack)
	{
		sprite_index = s_player_attack;
		image_index = 0;
		ds_list_clear(hitByAttack);
	}
	
	// Use Attack hitbox & check for hits
	mask_index = s_player_attackHB;
	var hitByAttackNow = ds_list_create();
	var hits = instance_place_list(x,y, o_enemy, hitByAttackNow, false);
	if (hits > 0)
	{
		for (var i = 0; i < hits; i++)
		{
			// If this instance has not yet been hit by this attack
			var hitID = hitByAttackNow[| i]; // ds_list_find_value(hitByAttackNow, i)
			
			// Hit doesn't exist
			if (ds_list_find_index(hitByAttack, hitID) == -1)
			{
				ds_list_add(hitByAttack, hitID);
				with (hitID)
				{
					sprite_index = s_enemy_corpse;
					alive = false;
				}
			}
		}
	}
	
	ds_list_destroy(hitByAttackNow);
	mask_index = s_player_idle;
	
	if (AnimationEnd())
	{
		sprite_index = s_player_idle;
		
		state = PLAYERSTATE.FREE;
		mv_spd = 5;
	}
}