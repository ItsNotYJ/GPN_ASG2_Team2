o_player.p_hp -= irandom_range(3, 5);
audio_play_sound(PlayerDamage, 900, false);
instance_destroy();