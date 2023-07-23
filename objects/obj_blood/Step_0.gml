image_angle = direction;
image_alpha = alpha;
alpha -= 0.05
surface_depth_disable(true)
//Se colidir com o objeto colisçao

direction    = random(360)


if (alpha <= 0)
{
	instance_destroy();	
}

//O mesmo com a colisão do fundo
if (place_meeting(x,y,obj_colisao_sangue))
{
if (!surface_exists(global.surface_blood))
	{
		global.surface_blood = surface_create(room_width,room_height)	
	}
	else
	{
		surface_set_target(global.surface_blood);
		surface_depth_disable(true)
		draw_sprite_ext(spr_sanguinhos,0,x,y,image_xscale,image_yscale,image_angle,c_white,.6)
		surface_reset_target();
	}	
}



