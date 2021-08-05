y -= scroll_speed;
if (y <= -text_height) {
	o_title_menu.visible = true;
	instance_destroy(o_credits);
}