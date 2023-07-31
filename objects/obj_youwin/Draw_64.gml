 /// @description UI

var _gui_width = display_get_gui_width();
var _gui_height = display_get_gui_height();

var _colorcyc = color_cycle(5, 0, 127, 255);

var _shake_x = random_amp(2);
var _shake_y = random_amp(2);

draw_set_halign(fa_center);

draw_text_transformed_color(display_get_gui_width() * .5 + 5 + _shake_x, display_get_gui_height() * .095 + 3 + _shake_y, "VOCÊ VENCEU!", 3, 3, 0, $0, $0, $0, $0, 1);
draw_text_transformed_color(display_get_gui_width() * .5 + 5 + _shake_x, display_get_gui_height() * .095 + _shake_y, "VOCÊ VENCEU!", 3, 3, 0, _colorcyc, _colorcyc, _colorcyc, _colorcyc, 1);

draw_set_alpha(1);
draw_outline(_gui_width * .5, _gui_height * .44, $"Você ganhou o jogo com R${global.shotgun.ammo},00!", 1.25, 1.25, 0 , 2);

progress_bar(
	_gui_width * .5 - 128, _gui_height * .66, 256, 24, 2, 0, #333333, #ff0000, skip_meter
);

draw_outline(_gui_width * .5, _gui_height * .66 + 5, "Segure espaço para continuar jogando", , , 0 ,1);

draw_set_alpha(transition_val);
draw_rectangle(0, 0, _gui_width, _gui_height, false);
draw_set_alpha(0);

draw_set_halign(fa_left);