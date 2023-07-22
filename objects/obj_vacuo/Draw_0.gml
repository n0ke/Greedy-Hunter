///@desc Sombra

if !(place_meeting(x, y + 1, obj_vacuo)){
	shader_set(shd_tile_shadow);
	draw_sprite_ext(sprite_index, image_index, x, y+16, image_xscale, image_yscale, image_angle, c_white, 0.5)
	shader_reset();
	
}
if !(place_meeting(x, y - 1, obj_vacuo))draw_sprite(spr_solid_top, 0, x, y);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, -1, 1);