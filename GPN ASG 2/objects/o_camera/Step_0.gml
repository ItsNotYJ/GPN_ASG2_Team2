/// @description Insert description here
// You can write your code in this editor

// Rate of the camera movement
x += (xTo - x) / 20;
y += (yTo - y) / 20;

// Checks if follow is set to an instance of an object
if (follow != noone)
{
	xTo = follow.x;
	yTo = follow.y;
}

var viewMatrix = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
camera_set_view_mat(camera, viewMatrix);