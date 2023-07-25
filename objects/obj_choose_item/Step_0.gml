/// @description Update

right.update();
left.update();

var _input = right.pressed() - left.pressed();

transition_val = _input == 0 ? lerp(transition_val, 1, .2) : 0;

inventory_index = qwrap(inventory_index + _input, 0, array_length(inventory) - 1);

inventory_swap_anim += _input;

inventory_swap_spd = elastic(inventory_swap_anim, inventory_swap_spd, 0, .4, .33);
inventory_swap_anim += inventory_swap_spd;