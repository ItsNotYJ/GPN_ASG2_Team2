function InventorySearch(rootObject, itemType)
{
	for (var i = 0; i < INVENTORY_SLOTS; i++)
	{
		if (rootObject.inventory[i] == itemType)
		{
			show_debug_message("yes");
			return (i);
		}
	}
	show_debug_message("no");
	return (-1);
}

function InventoryRemove(rootObject, itemType)
{
	var slot = InventorySearch(rootObject, itemType);
	if (slot != -1)
	{
		with (rootObject)
			inventory[slot] = -1;
		return true;
	}
	else
		return false;
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