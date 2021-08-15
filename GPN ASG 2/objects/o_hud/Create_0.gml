display_set_gui_size(700, 400);

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

// Inventory
isOpen = false;

#macro INVENTORY_SLOTS 9
rowLen = 3;

inventory = array_create(INVENTORY_SLOTS, -1);

selectedItem = 0;

// Text
d_textx = display_get_gui_width() / 2;
d_texty = display_get_gui_height() / 2;

// Boss HP Bar
dBoss_x = 485;
dBoss_y = 20;

dBoss_w = 200;
dBoss_h = 15;

dHPBoss_x = 490;
dHPBoss_y = 24;

dHPBoss_w = 189;
dHPBoss_h = 7;