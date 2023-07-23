array_insert(trail, 0, {x: x, y: y});
array_pop(trail);

if collision_line(x, y, x + lengthdir_x(speed, direction), y + lengthdir_y(speed, direction), obj_colisor, false, true){
	while !position_meeting(x, y, obj_colisor){
		x += lengthdir_x(1, direction);
		y += lengthdir_y(1, direction);
	}
	instance_destroy();
	
	repeat(6)
	{
		with(instance_create_depth(x,y,depth-1,obj_impacto_vfx))
		{
			debri = false
			image_angle = random(360)
			fric = .8
			
			motion_add(obj_weapon.image_angle+random_range(-70,70),random_range(-4,-9))
		}
	}
	
	repeat(5)
	{
		with(instance_create_depth(x,y,depth-1,obj_impacto_vfx))
		{
			debri = true
			image_index = random(image_number-1)
			image_speed = 0;
			image_angle = direction;
			sprite_index = spr_debri
			fric = .8
			
			motion_add(obj_weapon.image_angle+random_range(-40,40),random_range(-1,-6))
		}
	}
	
}