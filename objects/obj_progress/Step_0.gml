/// @description Update

transition_val = lerp(transition_val, 1, .09);

var _gui_width = display_get_gui_width();
var _gui_height = display_get_gui_height();

newroom.update();
shop.update();

newroom.x = _gui_width * .66;
newroom.y = _gui_height * .5;

shop.x = _gui_width * .34;
shop.y = _gui_height * .5;