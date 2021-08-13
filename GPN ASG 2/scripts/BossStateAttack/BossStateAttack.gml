// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BossStateAttack(){
	db_spd = 0;
	
	// Start of the attack
	if (sprite_index != s_boss_attack)
	{
		sprite_index = s_boss_attack;
		image_index = 0;
		ds_list_clear(dbHitByAttack);
	}
	
	// Use Attack hitbox & check for hits
	mask_index = s_boss_attackHB;
	
	var dbHitByAttackNow = ds_list_create();
	var hits = instance_place_list(x, y, o_player, dbHitByAttackNow, false);
	if (hits > 0)
	{
		for (var i = 0; i < hits; i++)
		{
			// If this instance has not yet been hit by this attack
			var hitID = dbHitByAttackNow[| i]; // ds_list_find_value(hitByAttackNow, i)
			
			// If Hit doesn't exist
			if (ds_list_find_index(dbHitByAttack, hitID) == -1)
			{
				ds_list_add(dbHitByAttack, hitID);
				with (hitID)
				{
					o_player.p_hp -= irandom_range(8, 15);
					
					audio_play_sound(PlayerDamage, 900, false);
				}
			}
		}
	}
	
	ds_list_destroy(dbHitByAttackNow);
	
	// Update mask index
	mask_index = s_boss_idle;
	
	if (AnimationEnd())
	{
		// Reaper
		sprite_index = s_boss_idle;
		dbState = DemonBossState.ALERT;
		db_spd = 0.6;
	}
}