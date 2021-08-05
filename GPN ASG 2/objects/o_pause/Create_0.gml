global.paused = false;

p_textx = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2 - string_width("Paused") / 2;
p_texty = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2;