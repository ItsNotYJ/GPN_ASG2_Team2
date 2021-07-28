/// @description Movement Code
// You can write your code in this editor
keyAttack = keyboard_check_pressed(ord("H"));

switch (state) 
{
	case PLAYERSTATE.FREE: 
		PlayerStateFree();
		break;
	case PLAYERSTATE.ATTACK_LIGHT:
		PlayerStateAttackLight();
		break;
}