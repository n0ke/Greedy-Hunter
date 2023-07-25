function gui_x(_x){ return _x - camera_get_view_x(view_camera[0])}
function gui_y(_y){ return _y - camera_get_view_y(view_camera[0])}

function gui_button(_x, _y, _sprite) constructor {
	
	sprite_index = _sprite;
	image_index = 0;
	
	x = _x;
	y = _y;
	
	image_xscale = 1;
	image_yscale = 1;
	image_angle = 0;
	image_blend = $ffffff;
	image_alpha = 1;
	
	shadow_alpha = 0;
	shadow_blend = $000000;
	shadow_xoffset = 0;
	shadow_yoffset = 0;
	
	width = sprite_get_width(sprite_index);
	height = sprite_get_height(sprite_index);
	
	l = x - sprite_get_xoffset(sprite_index);
	r = l + width;
	u = y - sprite_get_yoffset(sprite_index);
	d = u + height;
	
	hover = function() { return point_in_rectangle(gui_x(mouse_x), gui_y(mouse_y), l, u, r, d)}
	pressing = function() { return (point_in_rectangle(gui_x(mouse_x), gui_y(mouse_y), l, u, r, d) and mouse_check_button_pressed(mb_left))}
	pressed = function() { return (point_in_rectangle(gui_x(mouse_x), gui_y(mouse_y), l, u, r, d) and mouse_check_button_pressed(mb_left))}
	released = function() { return (point_in_rectangle(gui_x(mouse_x), gui_y(mouse_y), l, u, r, d) and mouse_check_button_pressed(mb_left))}
	
	draw_ext = function() {}
	drop_shadow = function(color, alpha, xoffset, yoffset){
		shadow_alpha = alpha;
		shadow_blend = color;
		shadow_xoffset = xoffset;
		shadow_yoffset = yoffset;
	}
	
	static update = function(){
	
		width = sprite_get_width(sprite_index);
		height = sprite_get_height(sprite_index);
	
		l = x - sprite_get_xoffset(sprite_index);
		r = l + width;
		u = y - sprite_get_yoffset(sprite_index);
		d = u + height;
		
	}
	
	draw = function(){
		
		draw_set_alpha(shadow_alpha);
		gpu_set_fog(1, shadow_blend, 1, 0);
		draw_sprite_ext(sprite_index, image_index, x + shadow_xoffset, y + shadow_yoffset, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
		gpu_set_fog(0, $ffffff, 0, 1);
		draw_set_alpha(1);
		
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
		draw_ext();
		
		//if global.debug draw_rectangle_color(l,u,r,d,$00ff00,$00ff00,$00ff00,$00ff00,1);
		
	}
}