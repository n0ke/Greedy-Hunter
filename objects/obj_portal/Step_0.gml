scale = lerp(scale, active, .3);

if !place_meeting(x, y, obj_player) and !active and !instance_exists(obj_inimigo_pai) and (global.dungeon != 6){
	
	if ((room == rm_store) and (array_length(global.inventario) == 0)) active = true;
	else if !(room == rm_store) and (current_time - created > 3000) active = true;
	
}

