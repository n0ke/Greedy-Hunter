
with(other)
{
	if(escudo == false && cooldown_hit <= 0)
	{
		velh = lengthdir_x(2, other.direction);
		velv = lengthdir_y(2, other.direction);
		
		vida -= other.damage;
		
		tempo_flash = 2;
		tomei_hit = true;
		
		var _x = irandom_range(bbox_left, bbox_right);
		
		sleep(35)
		
		var a = instance_create_layer(x,y-16,"VFX",obj_vfx_dano)
		a.depth = depth-1
	}	
			
}

instance_destroy();

