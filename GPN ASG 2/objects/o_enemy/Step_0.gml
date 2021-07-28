/// @description Insert description here
// You can write your code in this editor

if (e_hp > 0)
{
	switch (eState)
	{
		case EnemyState.IDLE:
			EnemyStateFree();
			break;
		case EnemyState.WANDER:
			EnemyStateWander();
			break;
		case EnemyState.ALERT:
			EnemyStateAlert();
			break;
		case EnemyState.ATTACK:
			EnemyStateAttack();
			break;
	}
}
