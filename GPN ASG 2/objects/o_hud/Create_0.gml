display_set_gui_size(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));

statbar_x = 10;
statbar_y = 10;

healthbar_w = 198;
healthbar_h = 12;

healthbar_x = 10;
healthbar_y = 11;

staminabar_w = 198;
staminabar_h = 12;

staminabar_x = 10;
staminabar_y = 23;

// Key
key_x = 8;
key_y = 50;

global.keys = 0;

// Gold
gold_x = 10;
gold_y = 80;

global.gold = 0;

// Inventory
isOpen = false;

#macro INVENTORY_SLOTS 9
rowLen = 3;

inventory = array_create(INVENTORY_SLOTS, -1);

randomize();

inventory[0] = 0;
inventory[1] = 0;