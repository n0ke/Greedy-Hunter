/// @description Pause

//	Flags
drawn = false;
paused = false;

pauseimage = noone;

//	UI
transition_val = 0;

var _gui_width = display_get_gui_width();
var _gui_height = display_get_gui_height();

//	Botões
right = new gui_button(_gui_width - (_gui_width * .1), _gui_height * .5, spr_arrow);
left = new gui_button((_gui_width * .1), _gui_height * .5, spr_arrow);
plus = new gui_button((_gui_width * .5) + (_gui_width * .1), (_gui_height * .78), spr_plusminus);
minus = new gui_button((_gui_width * .5) - (_gui_width * .1), (_gui_height * .78), spr_plusminus);
sell = new gui_button(_gui_width * .5, _gui_height * .9, spr_sell);

minus.image_index = 1;
left.image_xscale = -1;

//	Visual
arrow_scale_r = 1;
arrow_scale_l = -1;
plus_scale = 1;
minus_scale = 1;
sell_scale = 1;

//	Inventory
inventory_index = (inventory != []) ? array_length(inventory) div 2 : 0;
inventory_swap_anim = 0;
inventory_swap_spd = 0;

//	Store
price = inventory[inventory_index].price;