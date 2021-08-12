if (keyboard_check_pressed(vk_escape))
{
	global.paused = !global.paused;
	
	if (global.paused)
	{
		instance_deactivate_object(o_hud);
		instance_deactivate_object(o_player);
		instance_deactivate_object(o_reaper);
		instance_deactivate_object(o_demon_boss);
	}
	else
	{
		instance_activate_object(o_player);
		instance_activate_object(o_reaper);
		instance_activate_object(o_hud);
		instance_activate_object(o_demon_boss);
	}
}