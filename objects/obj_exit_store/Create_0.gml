/// @description Pause

//	Flags
drawn = false;
paused = false;

pauseimage = noone;

//	UI
transition_val = 0;

var _gui_width = display_get_gui_width();
var _gui_height = display_get_gui_height();

newroom = new gui_button(_gui_width * 5, _gui_height * .66, spr_button);

newroom.draw_ext = function() {
	draw_set_font(fnt_geral);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(newroom.x, newroom.y, "Proximo andar");
}