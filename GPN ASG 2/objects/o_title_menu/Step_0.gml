// Get inputs
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(vk_enter);

// Move through menu
pos += down_key - up_key;
if pos >= opt_len {pos = 0};
if pos < 0 {pos = opt_len - 1};

// Store opt_len
opt_len = array_length(option[menu_lvl]);

// Using options
if accept_key
{
	var sml = menu_lvl;
	
	switch (menu_lvl)
	{
		case 0:
			switch (pos)
			{
				// Start Game
				case 0:
					room_goto_next();
					break;
		
				// Settings Menu
				case 1:
					menu_lvl = 1;
					break;
		
				// Credits Screen	
				case 2:
					break;
		
				// End Game
				case 3:
					game_end();
					break;
			}
			break;
		case 1:
			switch (pos)
			{
				// Graphics
				case 0:
					break;
		
				// Audio
				case 1:
					break;
		
				// Controls
				case 2:
					break;
		
				// Back
				case 3:
					menu_lvl = 0;
					break;
			}
			break;
	}
	
	if sml != menu_lvl {pos = 0};
	
	// Correct the opt_len
	opt_len = array_length(option[menu_lvl]);
}