/// @description Update

right.update();
left.update();
plus.update();
minus.update();
sell.update();

var _input = right.pressed() - left.pressed();

inventory_index = qwrap(inventory_index + _input, 0, array_length(global.inventario) - 1);

if (_input != 0) {
	price = global.inventario[inventory_index].price_df;
	audio_play_sound(snd_ui_select, 0, 0);
}
price += plus.pressed() - minus.pressed();

if plus.pressed() or minus.pressed() audio_play_sound(snd_ui_select, 0, 0);

inventory_swap_anim += _input;
inventory_swap_spd = elastic(inventory_swap_anim, inventory_swap_spd, 0, .4, .33);
inventory_swap_anim += inventory_swap_spd;

if sell.released() {
	var _item = global.inventario[inventory_index];
	audio_play_sound(snd_ui_confirm, 0, 0);
	_item.price = price;
	pedestal.item = instance_create_layer(pedestal.x, pedestal.y , "Instances", obj_item, {item: _item, pedestal: true});
	array_delete(global.inventario, inventory_index, 1);
	SE_MATA;
}

var _gui_width = display_get_gui_width();
var _gui_height = display_get_gui_height();

right.x = _gui_width - (_gui_width * .1);
right.y = _gui_height * .5;
left.x = (_gui_width * .1);
left.y = _gui_height * .5;

plus.x = (_gui_width * .5) + (_gui_width * .1);
plus.y = (_gui_height * .78);
minus.x = (_gui_width * .5) - (_gui_width * .1);
minus.y = (_gui_height * .78);

sell.x = _gui_width * .5;
sell.y = _gui_height * .9;

arrow_scale_l += min(0, _input);
arrow_scale_r += max(0, _input);
arrow_scale_r = lerp(arrow_scale_r, 1, .3);
arrow_scale_l = lerp(arrow_scale_l, -1, .3);

plus_scale += plus.pressed();
minus_scale += minus.pressed();
plus_scale = lerp(plus_scale, 1, .3);
minus_scale = lerp(minus_scale, 1, .3);

right.image_xscale = arrow_scale_r;
right.image_yscale = arrow_scale_r;
right.image_angle = lengthdir_x(5, current_time * .25);

left.image_xscale = arrow_scale_l;
left.image_yscale = arrow_scale_l;
left.image_angle = lengthdir_x(5, current_time * .25 + 45);

plus.image_xscale = plus_scale;
plus.image_yscale = plus_scale;

minus.image_xscale = minus_scale;
minus.image_yscale = minus_scale;
