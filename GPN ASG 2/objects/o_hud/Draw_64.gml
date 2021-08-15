draw_set_font(MatchUpPro);

// Draw Statbar
draw_sprite(s_statbar_bg, 0, statbar_x, statbar_y);
draw_sprite_stretched(s_healthbar, 0, healthbar_x, healthbar_y, (o_player.p_hp / o_player.php_max) * healthbar_w, healthbar_h);
draw_sprite_stretched(s_staminabar, 0, staminabar_x, staminabar_y, (o_player.p_stamina / o_player.pstamina_max) * staminabar_w, staminabar_h);
draw_sprite(s_statbar, 0, statbar_x, statbar_y);

// Draw Key
draw_sprite(s_hud_key, 0, key_x, key_y);
draw_text_transformed(key_x + 40, key_y, string(global.keys), 1.5, 1.5, 0);

if (isOpen)
{
	// Draw Inventory bg
	draw_sprite_stretched(
		s_inventory,
		0,
		10,
		110,
		20 + rowLen * 48,
		20 + (((INVENTORY_SLOTS - 1) div rowLen) + 1) * 48
	);

	for (var i = 0; i < INVENTORY_SLOTS; i++)
	{
		var xx = 10 + (i mod rowLen) * 48 + 12;
		var yy = 110 + (i div rowLen) * 48 + 12;
		
		// Draw slots
		draw_sprite(s_slot, 0, xx, yy);
		
		// Draw item in slots
		if (inventory[i] != -1)
			draw_sprite(s_items, inventory[i], xx + 6, yy + 6);
			
		if (selectedItem == i)
			draw_sprite(s_slotSelected, 0, xx, yy);
	}
}

if (global.alive == false)
{
	// Draw background
	draw_sprite_ext(s_bg_black, 0, 0, 0, 1, 1, 0, c_white, 1);
	
	// Draw text
	draw_text_transformed(d_textx, d_texty, "Game Over! Press R to restart", 2, 2, 0);
}

// Draw Boss HP if player in demon boss room
if (global.alive && room == BossRoom1)
{
	// Draw Boss Name
	draw_text_transformed_color(dBoss_x + 70, 5, "Gale, The Undead Tyrant", 1, 1, 0, c_red, c_red, c_red, c_red, 1);
	
	// Draw HP Background
	draw_sprite_stretched(s_boss_hpbg, 0, dBoss_x, dBoss_y, dBoss_w, dBoss_h);
	
	// Draw HP
	draw_sprite_stretched(s_boss_hp, 0, dHPBoss_x, dHPBoss_y, (o_demon_boss.e_hp / o_demon_boss.ehp_max) * dHPBoss_w, dHPBoss_h);
}