if (e_hp <= 0)
{
	global.demonBossDead = true;
	instance_create_layer(0, 0, "AlwaysOn", o_credits);
}

if (e_hp > 0 && global.demonBossDead == false)
{ 
	switch (dbState)
	{
		case DemonBossState.ALERT:
			BossStateAlert();
			break;
		case DemonBossState.ATTACK:
			BossStateAttack();
			break;
	}
}