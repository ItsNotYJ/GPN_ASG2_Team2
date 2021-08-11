function InventoryUse(invIndex)
{
	// Retrieve item position
	var item = o_hud.inventory[invIndex];
	
	// Check if its an empty slot
	if (item != -1)
	{
		// Use items script
		UseItems(item);
		
		// Once done set it to empty
		o_hud.inventory[invIndex] = -1;
	}
}

function InventoryAdd(itemType)
{
	for (var i = 0; i < INVENTORY_SLOTS; i++)
	{
		// Check for empty slots
		if (o_hud.inventory[i] == -1)
		{
			o_hud.inventory[i] = itemType;
			break;
		}
	}
}