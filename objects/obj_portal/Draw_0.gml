gpu_set_tex_filter(true);
draw_sprite_ext(
	spr_brilho,
	0,
	x,
	y,
	3 * scale,
	2 * scale,
	0,
	#A6FCDB,
	1
);
gpu_set_tex_filter(false);

draw_sprite_ext(
	sprite_index,
	image_index,
	x,
	y,
	scale,
	scale,
	image_angle,
	image_blend,
	image_alpha
);