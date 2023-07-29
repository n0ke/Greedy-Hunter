/// @description Tutorial Display

//	Setup
draw_set_halign(fa_center);
draw_set_font(fnt_geral);

//	Título
draw_text_transformed_color(display_get_gui_width() * .5 + 5, display_get_gui_height() * .095 + 3, "TUTORIAL", 3, 3, 0, $0, $0, $0, $0, 1);
draw_text_transformed_color(display_get_gui_width() * .5 + 5, display_get_gui_height() * .095, "TUTORIAL", 3, 3, 0, $284CE6, $284CE6, $284CE6, $284CE6, 1);

//	Título da "cena"
draw_outline(display_get_gui_width() * .5 + content_x, display_get_gui_height() * .27, scene[scene_index].title, 2, 2, 0, 2);
//draw_text_ext_transformed_color(display_get_gui_width() * .5 + content_x, display_get_gui_height() * .27, scene[scene_index].title, 22, display_get_gui_width() * .66, 2, 2, 0, #ffffff, #ffffff, #ffffff, #ffffff, 1);

//	Visual da "cena"
scene[scene_index].visual(display_get_gui_width() * .5 + content_x, display_get_gui_height() * .55);

draw_set_valign(fa_middle);

//	Texto
draw_outline_ext(display_get_gui_width() * .5 + content_x, display_get_gui_height() * .84, scene[scene_index].text, 14, display_get_gui_width() * .66, 1, 1, 0, 1)
//draw_text_ext(display_get_gui_width() * .5 + content_x, display_get_gui_height() * .84, scene[scene_index].text, 14, display_get_gui_width() * .66);

draw_set_halign(fa_left);
draw_set_valign(fa_top);

//	Setas
var _lscale = 1 + lengthdir_x(.125, 90 + current_time * .2);
arrow.l.image_xscale = -_lscale;
arrow.l.image_yscale = _lscale;
arrow.l.x = arrow_dist;
arrow.l.y = display_get_gui_height() * .5;
arrow.l.image_angle = arrow_angle.l;
//arrow.l.image_alpha = out_of_range(scene_index - 1, 0, array_length(scene) - 1) ? .33 : 1;
arrow.l.draw();

var _rscale = 1 + lengthdir_x(.125, current_time * .2);
arrow.r.image_xscale = _rscale;
arrow.r.image_yscale = _rscale;
arrow.r.x = display_get_gui_width() - arrow_dist;
arrow.r.y = display_get_gui_height() * .5;
arrow.r.image_angle = arrow_angle.r;
//arrow.r.image_alpha = out_of_range(scene_index - 1, 0, array_length(scene) - 1) ? .33 : 1;
arrow.r.draw();

//	Skip
var _left = display_get_gui_width() - 85 + random_amp(skip_meter) * 2;
var _up = display_get_gui_height() - 20 + random_amp(skip_meter) * 2;
var _width = 75;
var _height = 10;
progress_bar(
	_left,
	_up,
	_width,
	_height,
	2,
	0,
	$222222,
	$0000ff,
	skip_meter
);
draw_set_halign(fa_center);
draw_set_halign(fa_middle);
draw_text_transformed_color(_left + 38, _up + 1, "Espaço para pular", .66, .66, 0, 0, 0, 0, 0, .5);
draw_text_transformed(_left + 38, _up, "Espaço para pular", .66, .66, 0);
draw_set_valign(fa_top);
draw_set_halign(fa_left);