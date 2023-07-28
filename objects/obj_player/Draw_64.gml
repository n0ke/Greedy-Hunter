var _gui_width = display_get_gui_width();
var _gui_height = display_get_gui_height();

if obj_portal.active draw_sprite_ext(
	spr_arrow,
	0,
	x + lengthdir_x(min(distance_to_object(obj_portal), 128), point_direction(x, y, obj_portal.x, obj_portal.y)) - camera_get_view_x(view_camera[0]),
	y + lengthdir_y(min(distance_to_object(obj_portal), 128), point_direction(x, y, obj_portal.x, obj_portal.y)) - camera_get_view_y(view_camera[0]),
	.50 + lengthdir_x(.25, current_time * .25),
	.50 + lengthdir_x(.25, current_time * .25),
	point_direction(x, y, obj_portal.x, obj_portal.y),
	color_cycle(5, 0, 127, 255),
	1
);