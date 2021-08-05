draw_set_font(MatchUpPro);

// Dynamically set height and width
var new_w = 0;
for (var i = 0; i < opt_len; i++)
{
	var opt_w = string_width(option[i]);
	new_w = max(new_w, opt_w);
}
width = new_w + mar_border * 2;
height = mar_border * 2 + string_height(option[0]) + (opt_len - 1) * mar_space;

// Align Center
x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2 - width / 2;
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2 - height / 2;

// Draw background
draw_sprite_ext(s_menu_bg, 0, x, y, width / sprite_width, height / sprite_height, 0, c_white, 1);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

for (var i = 0; i < opt_len; i++)
{
	var c = c_white;
	if pos == i {c = c_yellow};
	draw_text_color(x + mar_border, y + mar_border + mar_space * i, option[i], c, c, c, c, 1);
}