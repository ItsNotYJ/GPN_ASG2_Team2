/// @description Movement Code
// You can write your code in this editor
keyAttack = mouse_check_button_pressed(mb_left);

if (p_hp <= 0)
	alive = false;

if(alive)
{
	counter += 1;
	
	switch (state) 
	{
		case PLAYERSTATE.FREE: 
			PlayerStateFree();
			break;
		case PLAYERSTATE.ATTACK_LIGHT:
			PlayerStateAttackLight();
			break;
	}
	
	if(counter >= room_speed * 2 && p_stamina <= pstamina_max)
		p_stamina += 0.1;
		
	if(p_stamina < 0)
		p_stamina = 0;
	else if (p_stamina > pstamina_max)
		p_stamina = pstamina_max;
}
