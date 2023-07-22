/// @description Update

if windowIsUpdate(){	//	Update Window
	windowWidth = window_get_width();
	windowHeight = window_get_height();
	
	if (windowHeight > windowWidth) window_set_size(windowWidth, windowWidth);
	
	cameraWidth = ((windowHeight * windowAspect()) / windowScale()) * cameraZoom;
	cameraHeight = (windowHeight / windowScale()) * cameraZoom;
	
	camera_set_view_size(view_camera[viewIndex], cameraWidth, cameraHeight);
	view_set_wport(viewIndex, windowWidth);
	view_set_hport(viewIndex, windowHeight);
	
	if (!is_infinity(cameraWidth) or !is_infinity(cameraHeight)) and ((cameraWidth > 16) or (cameraHeight > 9)){
		surface_resize(application_surface, cameraWidth, cameraHeight);
	}
		
	display_set_gui_size(windowWidth, windowHeight);
}

//	Update Camera
cameraShake = lerp(cameraShake, 0, .07);
cameraShakePhase += (cameraShake * 6) * random_range(.95, 1.5);

var _halfWidth = cameraWidth * .5, _halfHeight = cameraHeight * .5;

x = lerp(x, xx, cameraLerpSmoothe);
y = lerp(y, yy, cameraLerpSmoothe);

var _xsh = lengthdir_x(cameraShake * .1, cameraShakePhase),
	_ysh = lengthdir_y(cameraShake * .1, cameraShakePhase);

camera_set_view_pos(view_camera[viewIndex], floor(x - _halfWidth + _xsh), floor(y - _halfHeight + _ysh));