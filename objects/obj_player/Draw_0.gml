
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