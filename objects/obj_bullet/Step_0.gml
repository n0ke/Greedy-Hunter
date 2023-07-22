array_insert(trail, 0, {x: x, y: y});
array_pop(trail);

if collision_line(x, y, x + lengthdir_x(speed, direction), y + lengthdir_y(speed, direction), obj_colisor, false, true){
	while !position_meeting(x, y, obj_colisor){
		x += lengthdir_x(1, direction);
		y += lengthdir_y(1, direction);
	}
	instance_destroy();
}