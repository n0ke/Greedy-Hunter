/// @description Insert description here
// You can write your code in this editor


speed *= fric 

switch(debri)
{
	case false:
	if (image_index >= image_number-1)
	{
		instance_destroy();
	}	
	break;
	
	case true:
	if(speed<=0)
	{
		surface_set_target(global.surf_debri)
		draw_self();
		surface_reset_target()
		instance_destroy();
	}
	break;
}
		



