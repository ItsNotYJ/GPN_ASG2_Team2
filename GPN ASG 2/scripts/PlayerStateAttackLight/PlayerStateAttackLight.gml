// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateAttackLight(){
	mv_spd = 0;
	
	// Start of the attack
	if (sprite_index != s_player_attack_left && sprite_index != s_player_attack_up && sprite_index != s_player_attack_down)
	{
		p_stamina -= 10
		
		if (sprite_index == s_player_walk_left || sprite_index == s_player_idle_left)
		{
			mask_index = s_player_attack_leftHB;
			sprite_index = s_player_attack_left;
		}
		else if (sprite_index == s_player_walk_up || sprite_index == s_player_idle_up)
		{
			mask_index = s_player_attack_upHB;
			sprite_index = s_player_attack_up;
		}
		else if (sprite_index == s_player_walk_down || sprite_index == s_player_idle_down)
		{
			mask_index = s_player_attack_downHB;
			sprite_index = s_player_attack_down;
		}
		
		image_index = 0;
		ds_list_clear(hitByAttack);
	}
	
	// Use Attack hitbox & check for hits
	var hitByAttackNow = ds_list_create();
	var hits = instance_place_list(x,y, o_parent_enemy, hitByAttackNow, false);
	if (hits > 0)
	{
		for (var i = 0; i < hits; i++)
		{
			// If this instance has not yet been hit by this attack
			var hitID = hitByAttackNow[| i]; // ds_list_find_value(hitByAttackNow, i)
			
			// If Hit doesn't exist
			if (ds_list_find_index(hitByAttack, hitID) == -1)
			{
				ds_list_add(hitByAttack, hitID);
				with (hitID)
				{		
					if(e_hp > 0)
						EnemyHit(global.playerStrength);
				}
			}
		}
	}
	
	ds_list_destroy(hitByAttackNow);
	mask_index = s_player_idle_left;
	
	if (AnimationEnd())
	{
		if (sprite_index == s_player_attack_left)
			sprite_index = s_player_idle_left;
	
		if (sprite_index == s_player_attack_up)
			sprite_index = s_player_idle_up;
	
		if (sprite_index == s_player_attack_down)
			sprite_index = s_player_idle_down;
		
		state = PLAYERSTATE.FREE;
		mv_spd = 2.5;
	}
}