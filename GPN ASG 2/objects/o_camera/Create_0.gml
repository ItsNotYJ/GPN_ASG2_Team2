/// @description Insert description here
// You can write your code in this editor

// Creates a blank camera
camera = camera_create();

// Sets up camera position
var viewMatrix = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
var projectionMatrix = matrix_build_projection_ortho(400, 400, 1, 10000);

// Set up camera
camera_set_view_mat(camera, viewMatrix);
camera_set_proj_mat(camera, projectionMatrix);

// Set Camera to viewport
view_camera[0] = camera;

// Player tracker variable
follow = o_player;

xTo = x;
yTo = y;