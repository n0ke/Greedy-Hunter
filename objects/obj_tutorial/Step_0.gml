/// @description Update

arrow.l.update();
arrow.r.update();

scene_current = clamp(scene_current + arrow.r.pressed() - arrow.l.pressed(), 0, array_length(scene) - 1);
var _scene_direction = sign(scene_index - scene_current);

if arrow.r.pressed() or arrow.l.pressed() audio_play_sound(snd_ui_select, 0, 0);

//	Animação
if (_scene_direction != 0){
	content_xto = _scene_direction * display_get_gui_width();
	if (abs(content_xto - content_x) < 100){
		content_x = -_scene_direction * display_get_gui_width();
		content_xto = 0;
		scene_index = scene_current;
	}
}
content_x = lerp(content_x, content_xto, .2);

//	Setas
arrow_angle.l = lerp(arrow_angle.l, arrow.l.pressed() * 90, .2);
arrow_angle.r = lerp(arrow_angle.r, arrow.r.pressed() * -90, .2);

//	Skip
skip_meter = clamp((keyboard_check(vk_space) ) ? skip_meter + .0125 : lerp(skip_meter, 0, .1), 0 ,1);
if (skip_meter == 1){
	skip_meter = 0;
	var t = instance_create_depth(x, y, depth, obj_transicao);
	t.Room = rm_main;
}