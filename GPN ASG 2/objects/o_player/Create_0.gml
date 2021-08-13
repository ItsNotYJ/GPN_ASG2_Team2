/// @description General Variables
// You can write your code in this editor

collisionMap = layer_tilemap_get_id(layer_get_id("Wall"));

// Refresh Tick
counter = 0;

// Player Movement Speed
mv_spd = 2.5;

// HUD
p_hp = 50;
php_max = p_hp;

p_stamina = 60;
pstamina_max = p_stamina;

// Player State
global.alive = true;
global.playerStrength = 5;
global.inBattle = false;
global.inTutorial = false;

state = PLAYERSTATE.FREE;
lastState = state;
hitByAttack = ds_list_create();

enum PLAYERSTATE 
{
	FREE,
	ATTACK_LIGHT
}

surface_resize(application_surface, 1920, 1080);

