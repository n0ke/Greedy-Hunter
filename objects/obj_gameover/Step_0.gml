/// @description Update

transition_val = lerp(transition_val, 0, .2);

//	Skip
skip_meter = clamp((keyboard_check(vk_space) ) ? skip_meter + .0125 : lerp(skip_meter, 0, .1), 0 ,1);
if (skip_meter == 1){
	skip_meter = 0;
	game_restart();
}