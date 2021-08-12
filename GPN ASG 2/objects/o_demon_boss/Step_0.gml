if (dBoss_hp > 0)
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