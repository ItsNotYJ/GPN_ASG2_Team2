if (keyboard_check_pressed(vk_escape))
{
	global.paused = !global.paused;
	
	if (global.paused)
	{
		instance_deactivate_layer("Player");
		instance_deactivate_layer("Enemies");
		instance_deactivate_object(o_hud);
	}
	else
	{
		instance_activate_layer("Player");
		instance_activate_layer("Enemies");
		instance_activate_object(o_hud);
	}
}