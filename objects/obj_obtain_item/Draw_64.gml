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
	item.display_image,
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
	item.display_image,
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
draw_set_font(fnt_geral);
draw_outline(_gui_width * .5,
	(_gui_height * .2) * transition_val,
	item.name,
	1,
	1,
	0,
	2
)

draw_outline(_gui_width * .5,_gui_height - (_gui_height * .25) * transition_val,item.description,1,1,0,2)

var _rainbow1 = color_cycle(5, 50, 127, 255);
var _rainbow2 = color_cycle(5, 0, 127, 255);
draw_outline(_gui_width * .5 + random_amp(2),_gui_height - (_gui_height * .14) * transition_val + random_amp(2),$"Preço Médio: R${item.price_df},{string_repeat("0", min(2 - string_length(frac(item.price)), 1)) + string(frac(item.price))}",1,1,0,2,
	_rainbow1,
	_rainbow1,
	_rainbow2,
	_rainbow2
)

draw_text_color(
	_gui_width * .5,
	_gui_height - (_gui_height * .05) * transition_val,
	"Pressione qualquer botao pra continuar",
	c_green,
	c_green,
	#ffffff,
	#ffffff,
	abs(lengthdir_x(1, current_time * .25)) * ((current_time - created) > 1000)
);