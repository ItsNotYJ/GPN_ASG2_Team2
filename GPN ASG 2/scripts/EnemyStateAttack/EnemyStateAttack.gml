// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyStateAttack(){
	e_spd = 0;
	
	// Start of the attack
	if (sprite_index != s_enemy_attack)
	{
		sprite_index = s_enemy_attack;
		image_index = 0;
		ds_list_clear(pHitByAttack);
	}
	
	// Use Attack hitbox & check for hits
	mask_index = s_enemy_attackHB;
	var pHitByAttackNow = ds_list_create();
	var hits = instance_place_list(x, y, o_player, pHitByAttackNow, false);
	if (hits > 0)
	{
		for (var i = 0; i < hits; i++)
		{
			// If this instance has not yet been hit by this attack
			var hitID = pHitByAttackNow[| i]; // ds_list_find_value(hitByAttackNow, i)
			
			// If Hit doesn't exist
			if (ds_list_find_index(pHitByAttack, hitID) == -1)
			{
				ds_list_add(pHitByAttack, hitID);
				with (hitID)
				{
					p_hp -= 5;
					sprite_index = s_player_dead;
				}
			}
		}
	}
	
	ds_list_destroy(pHitByAttackNow);
	mask_index = s_enemy_idle;
	
	if (AnimationEnd())
	{
		sprite_index = s_enemy_idle;
		eState = EnemyState.ALERT;
		e_spd = 0.8;
	}
}