draw_set_font(MatchUpPro);

// Draw Statbar
draw_sprite(s_statbar_bg, 0, statbar_x, statbar_y);
draw_sprite_stretched(s_healthbar, 0, healthbar_x, healthbar_y, (o_player.p_hp / o_player.php_max) * healthbar_w, healthbar_h);
draw_sprite_stretched(s_staminabar, 0, staminabar_x, staminabar_y, (o_player.p_stamina / o_player.pstamina_max) * staminabar_w, staminabar_h);
draw_sprite(s_statbar, 0, statbar_x, statbar_y);

// Draw Key
draw_sprite(s_hud_key, 0, key_x, key_y);
draw_text_transformed(gold_x + 25, key_y, string(global.keys), 1.5, 1.5, 0);

// Draw Gold
draw_sprite(s_hud_gold, 0, gold_x, gold_y);
draw_text_transformed(gold_x + 25, gold_y, string(global.gold), 1.5, 1.5, 0);

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
	}
}