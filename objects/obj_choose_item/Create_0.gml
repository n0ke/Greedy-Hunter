/// @description Pause

//	Flags
drawn = false;
paused = false;

pauseimage = noone;

//	UI
transition_val = 0;


var _gui_width = display_get_gui_width();
var _gui_height = display_get_gui_height();

right = new gui_button(_gui_width - (_gui_width * .1), _gui_height * .5, spr_arrow);
left = new gui_button((_gui_width * .1), _gui_height * .5, spr_arrow);

left.image_xscale = -1;

//	Inventory
inventory_index = (inventory != []) ? array_length(inventory) div 2 : 0;
inventory_swap_anim = 0;
inventory_swap_spd = 0;