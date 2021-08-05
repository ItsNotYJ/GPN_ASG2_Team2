/// @description Insert description here
// You can write your code in this editor

funcNineSliceBoxStretched(s_textbox, x1,y1,x2,y2, 0);

draw_set_font(MatchUpPro)
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_black);

var _print = string_copy(message, 1, textProgress);

draw_text((x1+x2)/2,y1+8, _print);

draw_set_color(c_white);

draw_text((x1+x2)/2,y1+7, _print);
