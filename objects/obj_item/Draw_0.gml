draw_sprite_ext(
	spr_brilho,
	0,
	x,
	y - 26 + lengthdir_x(4, current_time * .33 + x * 10),
	.75,
	.75,
	0,
	#ffffff,
	.5
);

draw_sprite_ext(
	sprite_index,
	image_index,
	x,
	y - 26 + lengthdir_x(4, current_time * .33 + x * 10),
	image_xscale,
	image_yscale,
	image_angle + lengthdir_x(13, current_time),
	image_blend,
	image_alpha
);
var vz = lengthdir_x(4, current_time * .33 + x * 10);
draw_shadow(x, y + 8, 6 / (1 + vz / 35));
