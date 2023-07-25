/// @description UI

var _gui_width = display_get_gui_width();
var _gui_height = display_get_gui_height();

draw_set_alpha(.5);
draw_rectangle_color(0, 0, _gui_width, _gui_height, 0, 0, 0, 0, false);
draw_set_alpha(1);

right.x = _gui_width - (_gui_width * .1);
right.y = _gui_height * .5;

left.x = (_gui_width * .1);
left.y = _gui_height * .5;

right.draw();
left.draw();

for(var i = 0; i <= inventory_index; i++){
	
	draw_sprite_ext(
		inventory[i].display_image,
		0,
		_gui_width * .5 + (i - inventory_index + inventory_swap_anim) * (_gui_width * .4) / power((abs(i - inventory_index + inventory_swap_anim) + 1), 1.07),
		_gui_height * .5,
		1 / power(abs(i - inventory_index + inventory_swap_anim) + 1, 1.05),
		1 / power(abs(i - inventory_index + inventory_swap_anim) + 1, 1.05),
		0,
		merge_color(#ffffff, 0, abs(i - inventory_index + inventory_swap_anim) / array_length(inventory)),
		1
	);
	
}

for(var i = array_length(inventory) - 1; i > inventory_index; i--){
	
	draw_sprite_ext(
		inventory[i].display_image,
		0,
		_gui_width * .5 + (i - inventory_index + inventory_swap_anim) * (_gui_width * .4) / power((abs(i - inventory_index + inventory_swap_anim) + 1), 1.07),
		_gui_height * .5,
		1 / power(abs(i - inventory_index + inventory_swap_anim) + 1, 1.05),
		1 / power(abs(i - inventory_index + inventory_swap_anim) + 1, 1.05),
		0,
		merge_color(#ffffff, 0, abs(i - inventory_index + inventory_swap_anim) / array_length(inventory)),
		1
	);
	
}

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_geral);
draw_outline(_gui_width * .5,
	(_gui_height * .2) * transition_val,
	inventory[i].name,
	1,
	1,
	0,
	2
)

draw_outline(_gui_width * .5,_gui_height - (_gui_height * .25) * transition_val,inventory[i].description,1,1,0,2)

var _rainbow1 = color_cycle(5, 50, 127, 255);
var _rainbow2 = color_cycle(5, 0, 127, 255);
draw_outline(_gui_width * .5 + random_amp(2),_gui_height - (_gui_height * .14) * transition_val + random_amp(2),$"R${inventory[i].price},{string_repeat("0", min(2 - string_length(frac(inventory[i].price)), 1)) + string(frac(inventory[i].price))}",1,1,0,2,
	_rainbow1,
	_rainbow1,
	_rainbow2,
	_rainbow2)

/*
draw_sprite_ext(
	inventory[i].display_image,
	0,
	_gui_width * .5 + inventory_swap_anim * (_gui_width * .4) / power((abs(inventory_swap_anim) + 1), 1.07),
	_gui_height * .5,
	1 / power(abs(inventory_swap_anim) + 1, 1.05),
	1 / power(abs(inventory_swap_anim) + 1, 1.05),
	inventory_swap_anim * 20,
	merge_color(#ffffff, 0, abs(inventory_swap_anim) / array_length(inventory)),
	1
);

//draw_sprite_ext(inventory[inventory_index].display_image, 0, _gui_width * .5, _gui_height * .5, 1, 1, 0, #ffffff, 1);