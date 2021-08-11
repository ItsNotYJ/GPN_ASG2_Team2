for (var i = 0; i < INVENTORY_SLOTS; i++)
{
	if (o_hud.inventory[i] != -1)
		itemCount += 1;
}

if (itemCount < INVENTORY_SLOTS)
{
	// If player walks to pick up potion
	InventoryAdd(image_index);

	// Destroy the item so once picked up
	instance_destroy();
}