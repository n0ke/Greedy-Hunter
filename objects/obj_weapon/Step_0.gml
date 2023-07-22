if mouse_check_button_pressed(mb_left){
	
	obj_camera.cameraShake = 30;
	instance_create_layer(x, y, "Instances", obj_bullet, {direction: image_angle, speed: 20})
	
}