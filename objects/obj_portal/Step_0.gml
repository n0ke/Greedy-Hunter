scale = lerp(scale, active, .3);

if !place_meeting(x, y, obj_player) and !active and !instance_exists(obj_inimigo_pai){
	
	if (current_time - created > 3000) active = true;
}