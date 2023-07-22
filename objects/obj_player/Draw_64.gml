var _gui_width = display_get_gui_width();
var _gui_height = display_get_gui_height();

draw_set_alpha(.33);
if (inventario_val > .1) draw_rectangle_color(0,0, floor((_gui_width * .33) * inventario_val) - 1, _gui_height, 0, 0, 0, 0, false);
draw_set_alpha(1);