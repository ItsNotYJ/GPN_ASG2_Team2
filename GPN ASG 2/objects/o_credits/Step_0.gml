if (room == BossRoom1)
{
	instance_deactivate_object(o_player);
	instance_deactivate_object(o_camera);
	instance_deactivate_object(o_hud);
}

y -= scroll_speed;

if (y <= -text_height) {
	if (room == TitleScreen)
		o_title_menu.visible = true;
	else if (room == BossRoom1)
		game_restart();
	
	instance_destroy(o_credits);
}