/// @description Movement Code
// You can write your code in this editor
keyAttack = mouse_check_button_pressed(mb_left);

if (p_hp <= 0)
	global.alive = false;
else if (p_hp > php_max)
	p_hp = php_max;

if(global.alive)
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
	
	// Regenrate Stamina
	if(counter >= room_speed * 2 && p_stamina <= pstamina_max)
		p_stamina += 0.1;
	
	// Stop bar from overflowing
	if(p_stamina < 0)
		p_stamina = 0;
	else if (p_stamina > pstamina_max)
		p_stamina = pstamina_max;
	
	// If stamina goes below a certain point, lower speed
	if (p_stamina < pstamina_max / 3)
		mv_spd = 1;
	else
		mv_spd = 2.5;
}