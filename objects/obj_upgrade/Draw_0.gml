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



draw_sprite_ext(
	sprite_index,
	upgrade,
	x,
	y - z,
	image_xscale,
	image_yscale,
	image_angle,
	image_blend,
	image_alpha
);

