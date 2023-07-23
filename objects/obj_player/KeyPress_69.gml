var _pedestal = instance_nearest(x, y, obj_pedestal);
var _item = instance_nearest(x, y, obj_item);

if (instance_exists(_pedestal) and (distance_to_object(_pedestal) < 32)){
	instance_create_layer(_pedestal.x, _pedestal.y , "Instances", obj_item);
}

instance_create_depth(0, 0, -2040, obj_obtain_item);

if (instance_exists(_item) and (distance_to_object(_item) < 32)){
	array_insert(inventario, 0, _item.sprite_index);
	show_debug_message(inventario);
	
	instance_destroy(_item);
}
