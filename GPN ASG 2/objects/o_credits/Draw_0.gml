draw_set_font(MatchUpPro);

// Draw background
draw_rectangle_color(0, 0, display_get_gui_width(), display_get_gui_height(), c_black, c_black, c_black, c_black, false);

// Draw Text
draw_set_colour(c_white);
draw_set_halign(fa_center);
draw_text(x, y, text);
draw_set_halign(fa_left);