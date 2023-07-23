if vignette {
	gpu_set_texfilter(true);
	draw_sprite_stretched_ext(spr_vignette, 0, camera_get_view_x(view_camera[viewIndex]), camera_get_view_y(view_camera[viewIndex]), cameraWidth, cameraHeight, vignette_color, 1);
	gpu_set_texfilter(false);
}