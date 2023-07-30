var _iniqtd = instance_number(obj_inimigo_pai);	

if(instance_exists(obj_player))
{
	var _dist = point_distance(x, y, obj_player.x, obj_player.y)	
		
	if(random(4) < .1 && _iniqtd < inimigo_qtd_max && spawna && _dist > 128) 
	{
		var _x = irandom_range(4 * 32, room_width - (4 * 32));
		var _y = irandom_range(4 * 32, room_height - (4 * 32));
		
		var ini = instance_create_layer(_x, _y, "Instances", inimigo[_a]);	
		if instance_exists(ini){
			var _col = collision_circle(ini.x, ini.y, 24, obj_vacuo, true, true);
		
			if(_col) instance_destroy(ini);	
		}
	}
}
