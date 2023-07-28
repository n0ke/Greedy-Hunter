/// @description Update

transition_val = lerp(transition_val, 1, .09);

var _gui_width = display_get_gui_width();
var _gui_height = display_get_gui_height();

newroom.update();

newroom.x = _gui_width * .5;
newroom.y = _gui_height * .66;


if newroom.released(){
	room_goto(rm_main);
}