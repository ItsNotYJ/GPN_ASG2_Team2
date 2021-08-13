for (var i = 0; i < INVENTORY_SLOTS; i++)
{
	if (o_hud.inventory[i] != -1)
		itemCount += 1;
}

if (itemCount < INVENTORY_SLOTS)
{
	// If player walks to pick up potion
	InventoryAdd(image_index);
	
	// Play audio
	audio_play_sound(PickupItem, 900, false);

	// Destroy the item so once picked up
	instance_destroy();
}