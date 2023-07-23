/// @description Insert description here
// You can write your code in this editor



if (surface_exists(global.surf_debri))
{
	surface_free(global.surf_debri)
	global.surf_debri = surface_create(room_width,room_height)
}


