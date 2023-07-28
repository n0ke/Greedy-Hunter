/// @description Update

transition_val = lerp(transition_val, 1, .09);

var _gui_width = display_get_gui_width();
var _gui_height = display_get_gui_height();

newroom.update();
shop.update();

newroom.x = _gui_width * .33;
newroom.y = _gui_height * .66;

shop.x = _gui_width * .66;
shop.y = _gui_height * .66;

if newroom.released(){
	room_restart();
}

if shop.released(){
	room_goto(rm_store);
}