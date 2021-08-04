/// @description General Variables
// You can write your code in this editor

collisionMap = layer_tilemap_get_id(layer_get_id("Wall"));

// Refresh Tick
counter = 0;

// Player Movement Speed
mv_spd = 2.5;

// HUD
p_hp = 100;
php_max = p_hp;

p_stamina = 100;
pstamina_max = p_stamina;

statbar_x = 10;
statbar_y = 10;

healthbar_w = 400;
healthbar_h = 25;

healthbar_x = 10;
healthbar_y = 13;

staminabar_w = 400;
staminabar_h = 25;

staminabar_x = 10;
staminabar_y = 37;

// Player State
alive = true;
state = PLAYERSTATE.FREE;
lastState = state;
hitByAttack = ds_list_create();

enum PLAYERSTATE 
{
	FREE,
	ATTACK_LIGHT
}

surface_resize(application_surface, 1920, 1080);

