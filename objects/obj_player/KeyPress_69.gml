var _pedestal = instance_nearest(x, y, obj_pedestal);
var _item = instance_nearest(x, y, obj_item);

if (instance_exists(_item) and !_item.pedestal and (distance_to_object(_item) < 32)){
	array_insert(inventario, 0, global.itemDB[_item.index]);
	instance_create_depth(0, 0, -2040, obj_obtain_item);
	
	instance_destroy(_item);
}
 

else if (instance_exists(_pedestal) and !instance_exists(_pedestal.item) and (distance_to_object(_pedestal) < 32)){
	//_pedestal.item = instance_create_layer(_pedestal.x, _pedestal.y , "Instances", obj_item, {pedestal: true});
	instance_create_layer(x, y, "Instances", obj_choose_item, {inventory: inventario});
}

