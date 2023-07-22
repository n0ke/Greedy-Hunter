if mouse_check_button_pressed(mb_left) and !global.modo_inventario{
	obj_camera.cameraShake = 30;
	instance_create_layer(x, y, "Balas", obj_bullet, {direction: image_angle, speed: 20})
	audio_play_sound(snd_shot, 0, false, , , random_range(.95, 1.05));
}