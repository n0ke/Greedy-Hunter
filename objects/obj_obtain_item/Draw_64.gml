/// @description UI

var _gui_width = display_get_gui_width();
var _gui_height = display_get_gui_height();


draw_set_alpha(.5);
draw_rectangle_color(0, 0, _gui_width, _gui_height, 0, 0, 0, 0, false);
draw_set_alpha(1);

gpu_set_tex_filter(true);
draw_sprite_ext(
	spr_brilho_radial,
	0,
	_gui_width * .5,
	_gui_height * .5,
	transition_val,
	transition_val,
	current_time * .02,
	#ffffff,
	.75
);
gpu_set_tex_filter(false);

draw_sprite_ext(
	spr_cocagrande,
	0,
	_gui_width * .5 + 5,
	_gui_height * .5 + 5,
	transition_val * .75,
	transition_val * .75,
	lengthdir_x(7, current_time * .5),
	0,
	.55
);

draw_sprite_ext(
	spr_cocagrande,
	0,
	_gui_width * .5,
	_gui_height * .5,
	transition_val * .75,
	transition_val * .75,
	lengthdir_x(7, current_time * .5),
	#ffffff,
	1
);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(global.mini_font);
draw_text_transformed(
	_gui_width * .5,
	(_gui_height * .2) * transition_val,
	"'Cocacola Espuma'",
	4,
	4,
	0
);

draw_text_transformed(
	_gui_width * .5,
	_gui_height - (_gui_height * .25) * transition_val,
	"Coquinha gelada hummmmm dilissa",
	1.5,
	1.5,
	0
);

var _rainbow1 = color_cycle(5, 50, 127, 255);
var _rainbow2 = color_cycle(5, 0, 127, 255);
draw_text_transformed_color(
	_gui_width * .5 + random_amp(2),
	_gui_height - (_gui_height * .14) * transition_val + random_amp(2),
	"R$10,00",
	2,
	2,
	0,
	_rainbow1,
	_rainbow1,
	_rainbow2,
	_rainbow2,
	1
);

draw_text_color(
	_gui_width * .5,
	_gui_height - (_gui_height * .05) * transition_val,
	"pressione qualquer botao pra continuar",
	#ffffff,
	#ffffff,
	#ffffff,
	#ffffff,
	abs(lengthdir_x(1, current_time * .25))
);