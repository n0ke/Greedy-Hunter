spd = {x: 0, y: 0}
dir = {x: 0, y: 0}

#macro WALK_SPEED 3
#macro ACC .3
#macro MID_HEIGHT sprite_get_height(sprite_index) * .5

weapon = instance_create_layer(x, y, "Instances", obj_weapon);

lado = 1;

inventario_val = 0;

obj_camera.cameraSetPos(x, y);