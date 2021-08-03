/// @description Insert description here
// You can write your code in this editor

draw_sprite(s_statbar_bg, 0, statbar_x, statbar_y);
draw_sprite_stretched(s_healthbar, 0, healthbar_x, healthbar_y, (p_hp / php_max) * healthbar_w, healthbar_h);
draw_sprite_stretched(s_staminabar, 0, staminabar_x, staminabar_y, (p_stamina / pstamina_max) * staminabar_w, staminabar_h);
draw_sprite(s_statbar, 0, statbar_x + 4, statbar_y + 3);
