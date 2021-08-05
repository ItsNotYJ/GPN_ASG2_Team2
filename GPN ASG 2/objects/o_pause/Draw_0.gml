if (global.paused)
{
	draw_set_font(MatchUpPro);

	// Draw background
	draw_sprite_ext(s_bg_black, 0, 0, 0, 1, 1, 0, c_white, 0.7);
	
	// Draw text
	draw_text_transformed(p_textx, p_texty, "Paused", 2, 2, 0);
}