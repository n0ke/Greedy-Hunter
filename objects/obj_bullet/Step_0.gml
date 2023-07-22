if kill instance_destroy();

array_insert(trail, 0, {x: x, y: y});
array_pop(trail);

if place_meeting(x + lengthdir_x(speed, direction), y + lengthdir_y(speed, direction), obj_colisor){
	while !position_meeting(x, y, obj_colisor){
		x += lengthdir_x(1, direction);
		y += lengthdir_y(1, direction);
	}
	spark(x, y, 20, direction - 180, 40, 4, .9, #ffffff, #FFEB57, 4);
	kill = true;
}