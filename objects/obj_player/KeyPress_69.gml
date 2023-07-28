var _pedestal = instance_nearest(x, y, obj_pedestal);
var _item = instance_nearest(x, y, obj_item);

if (instance_exists(_item) and !_item.pedestal and (distance_to_object(_item) < 32)){
	array_insert(global.inventario, 0, _item.item);
	instance_create_depth(0, 0, -2040, obj_obtain_item, {item: _item.item});
	instance_destroy(_item);
}
 

else if (instance_exists(_pedestal) and !instance_exists(_pedestal.item) and (distance_to_object(_pedestal) < 32)){
	if array_length(global.inventario) != 0 instance_create_layer(x, y, "Instances", obj_choose_item, {pedestal: _pedestal});
}

