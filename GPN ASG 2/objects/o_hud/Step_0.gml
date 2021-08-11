// Move through inventory items
if (isOpen)
{
	if (keyboard_check_pressed(vk_right))
	{
		if (selectedItem + 1) <= (INVENTORY_SLOTS - 1)
			selectedItem += 1;
		else
			selectedItem = 0;
	}
	
	if (keyboard_check_pressed(vk_left))
	{
		if (selectedItem - 1) >= 0
			selectedItem -= 1;
		else
			selectedItem = INVENTORY_SLOTS - 1;
	}
	
	if (keyboard_check_pressed(vk_enter))
	{
		InventoryUse(selectedItem);
	}
}