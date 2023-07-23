if (!surface_exists(global.surface_blood))
{
	global.surface_blood = surface_create(room_width,room_height);	
	
}
else
{
	
	draw_surface(global.surface_blood,0,0)	
}

if (!surface_exists(global.surf_debri))
{
	global.surf_debri = surface_create(room_width,room_height);	
	
}
else
{
	
	draw_surface(global.surf_debri,0,0)	
}
