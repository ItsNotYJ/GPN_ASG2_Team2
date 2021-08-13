// Get inputs
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(vk_enter);

// Move through menu
pos += down_key - up_key;
if pos >= opt_len {pos = 0};
if pos < 0 {pos = opt_len - 1};

// Using options
if accept_key
{
	switch (pos)
	{
		// Start Game
		case 0:
			room_goto(Tutorial);
			break;
		
		// Credits Screen
		case 1:
			o_title_menu.visible = false;
			instance_create_layer(o_title_menu.x, o_title_menu.y, "Instances", o_credits);
			break;
		
		// End Game
		case 2:
			game_end();
			break;
	}
}