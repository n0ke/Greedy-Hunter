/// @description Draw Paused game

if !drawn{
	drawn = true;
	pauseimage = sprite_create_from_surface(
		application_surface,
		0,
		0,
		surface_get_width(application_surface),
		surface_get_height(application_surface),
		false,
		false,
		0,
		0
	);
}

if drawn and !paused {
	paused = true;
	
	//	Pause
	instance_deactivate_all(true);
	instance_activate_object(obj_camera);
	
}

shader_set(shd_grayscale);
draw_sprite_stretched_ext(pauseimage, 0, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), obj_camera.cameraWidth, obj_camera.cameraHeight, #999999, 1);
shader_reset();