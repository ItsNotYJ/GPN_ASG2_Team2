/// @description Insert description here
// You can write your code in this editor

if (e_hp > 0)
{
	switch (eState)
	{
		case RangedEnemyState.IDLE:
			RangedEnemyStateFree();
			break;
		case RangedEnemyState.WANDER:
			RangedEnemyStateWander();
			break;
		case RangedEnemyState.RANGED_ATTACK:
			RangedEnemyStateAttack();
			break;
	}
}
