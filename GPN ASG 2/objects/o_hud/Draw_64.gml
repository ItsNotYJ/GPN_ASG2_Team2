draw_sprite(s_statbar_bg, 0, statbar_x, statbar_y);
draw_sprite_stretched(s_healthbar, 0, healthbar_x, healthbar_y, (o_player.p_hp / o_player.php_max) * healthbar_w, healthbar_h);
draw_sprite_stretched(s_staminabar, 0, staminabar_x, staminabar_y, (o_player.p_stamina / o_player.pstamina_max) * staminabar_w, staminabar_h);
draw_sprite(s_statbar, 0, statbar_x + 4, statbar_y + 3);