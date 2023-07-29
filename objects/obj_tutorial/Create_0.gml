/// @description Setup

scene_current = 0;
scene_index = 0;
scene = [

	{	//	1
		title: "Dinheiro é munição!",
		visual: function(_x, _y){
			draw_sprite_ext(
				spr_player_fwd_walking,
				floor((current_time mod 1000) / 66.6),
				_x,
				_y + 32,
				2,
				2,
				0,
				#ffffff,
				1
			);
		},
		text: "Você é uma aventureira que mata inimigos para coletar itens valiosos e vendê-los por moedas (munições)",
	},
	
	{	//	2
		title: "Fique mais forte!",
		visual: function(_x, _y){
		},
		text: "Use as moedas para fazer upgrades e se tornar mais poderoso. Cuidado para não ficar sem dinheiro!!",
	},
	
];

//	Animação geral
content_x = 0;
content_xto = 0;

//	Setas
arrow_dist = 32;
arrow_angle = {l: 0, r: 0};
arrow = {
	l: new gui_button(arrow_dist, display_get_gui_height() * .5, spr_arrow),
	r: new gui_button(display_get_gui_width() - arrow_dist, display_get_gui_height() * .5, spr_arrow)
}

//	Skip
skip_meter = 0;