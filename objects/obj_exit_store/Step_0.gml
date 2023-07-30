/// @description Update

transition_val = lerp(transition_val, 1, .09);

var _gui_width = display_get_gui_width();
var _gui_height = display_get_gui_height();

newroom.update();

newroom.x = _gui_width * .5;
newroom.y = _gui_height * .66;


if newroom.released(){
	audio_play_sound(snd_ui_confirm, 0, 0);
	transto(rm_main);
}