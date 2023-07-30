draw_sprite_ext(
	sprite_index,
	image_index,
	x,
	y + z * .5,
	image_xscale,
	-image_yscale * .5,
	image_angle,
	#000000,
	.5
);

var _colorcyc = color_cycle(5, x * .125, 127, 255);

draw_sprite_ext(
	spr_brilho_radial,
	0,
	x,
	y - z - 24,
	.5,
	.5,
	current_time * .07 + x,
	_colorcyc,
	.55
);

draw_sprite_ext(
	sprite_index,
	upgrade,
	x,
	y - z,
	image_xscale,
	image_yscale,
	image_angle,
	color_cycle(5, x * .125, 127, 255),
	image_alpha
);

