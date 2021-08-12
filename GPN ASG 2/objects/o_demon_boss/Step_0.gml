if (e_hp <= 0)
{
	global.demonBossDead = true;
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