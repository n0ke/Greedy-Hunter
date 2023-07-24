
shader_set(shd_tile_shadow);

draw_sprite_ext(
	spr_ponytail,
	0,
	x - spd.x,
	y - 24 - spd.y,
	lado,
	1,
	pony_r,
	#ffffff,
	image_alpha
);

draw_sprite_ext(sprite_index, image_index, x, y, xscale, -.6, 0, -1, .5);
shader_reset();

draw_sprite_ext(
	spr_ponytail,
	0,
	x - spd.x,
	y - 24 - spd.y,
	lado,
	1,
	pony_r,
	#ffffff,
	image_alpha
);

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