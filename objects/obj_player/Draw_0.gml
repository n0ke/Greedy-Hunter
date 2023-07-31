
shader_set(shd_tile_shadow);

if (y - mouse_y) <= 0 ponytail();

draw_sprite_ext(sprite_index, image_index, x, y, xscale, -.6, 0, -1, .5);

if (y - mouse_y) > 0 ponytail();

shader_reset();

if (y - mouse_y) <= 0 ponytail();

draw_sprite_ext(
	sprite_index,
	image_index,
	x,
	y,
	xscale * lado,
	yscale,
	image_angle,
	image_blend,
	image_alpha
);

if (y - mouse_y) > 0 ponytail();

if distance_to_object(obj_pedestal) < 32 or distance_to_object(obj_upgrade) < 32 or distance_to_object(obj_item) < 32{
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_alpha(abs(lengthdir_x(1, current_time * .33)));
	draw_outline(x, y - 42, "Pressione 'E'", , , 0 ,1);
	draw_set_alpha(1);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}