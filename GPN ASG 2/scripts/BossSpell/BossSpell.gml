// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BossSpell(spellDir, spellSpd){
	if (spellDir == 0)
	{
		// Bottom Spell
		s = instance_create_depth(x, y + (sprite_height / 2), 0, o_demon_boss_spell);
		s.direction = 270;
		s.speed = spellSpd;
		
		// Left Spell
		s = instance_create_depth(x - (sprite_width / 2), y, 0, o_demon_boss_spell);
		s.direction = 180;
		s.speed = spellSpd;
		
		// Top Spell
		s = instance_create_depth(x, y - (sprite_height / 2), 0, o_demon_boss_spell);
		s.direction = 90;
		s.speed = spellSpd;
		
		// Right Spell
		s = instance_create_depth(x + (sprite_width / 2), y, 0, o_demon_boss_spell);
		s.direction = 0;
		s.speed = spellSpd;
	}
	else if (spellDir == 1)
	{
		// Bottom Spell
		s = instance_create_depth(x + (sprite_width / 2), y + (sprite_height / 2), 0, o_demon_boss_spell);
		s.direction = 315;
		s.speed = spellSpd;
		
		// Left Spell
		s = instance_create_depth(x - (sprite_width / 2), y + (sprite_height / 2), 0, o_demon_boss_spell);
		s.direction = 225;
		s.speed = spellSpd;
		
		// Top Spell
		s = instance_create_depth(x - (sprite_width / 2), y - (sprite_height / 2), 0, o_demon_boss_spell);
		s.direction = 135;
		s.speed = spellSpd;
		
		// Right Spell
		s = instance_create_depth(x + (sprite_width / 2), y - (sprite_height / 2), 0, o_demon_boss_spell);
		s.direction = 45;
		s.speed = spellSpd;
	}
}