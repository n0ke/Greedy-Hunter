var _atk = false;
if (sprite_index == spr_attk) and (image_index == image_number - 1) _atk = true;

if vida <= 0 instance_create_depth(x, y, depth, obj_xablau);

event_inherited();

x += velh;
y += velv;

if(step)
{
	if(instance_exists(target))
	{
		var _dist = point_distance(x, y, target.x, target.y);
		var _dir  = point_direction(x, y, target.x, target.y);

			//Fazendo o inimigo "olhar" pro player
			if(target.x < x){ xscale = 1; lado = 1; }
			else{ xscale = -1; lado = -1; }
			
			
			
			//Trocando sprite
		/*	if(estado_timer <= 0)
			{
				//Definindo se o inimigo pode atirar ou não
				if(random(4) < 1.5) pode_atirar = true;
				else pode_atirar = false;
				
				
				if(pode_atirar)
				{
					if(random(4) < 3.2){ segue = false; atirando(); } //Atirando parado
								 else{ segue = true; atirando(); }	//Atirando andando
					estado_timer = estado_timer_max/1.5;	
				}
				else
				{
					if(random(4) < 1)
					{ 
						segue = true;	
						estado_timer = estado_timer_max/4;	
					}
					else
					{
						segue = false;
						estado_timer = estado_timer_max/4;
					}	
				}
			}*/
			
			//Seguindo o player
				
			if distance_to_object(obj_player) < 300
			{
				velh = lerp(velh, lengthdir_x(vel, _dir ), acel) 
				velv = lerp(velv, lengthdir_y(vel, _dir ), acel) 
			}
			else
			{
				velh = 0;
				velv = 0;
			}
			
			
			/*else //Ficando parado
			{
				if(abs(velh) > .4) velh = lerp(velh, 0, acel*2); else velh = 0;	
				if(abs(velv) > .4) velv = lerp(velv, 0, acel*2); else velv = 0;	
			}*/	
		
		/*else //Se eu não vejo o player
		{	
			if(velh != 0){ xscale = sign(velh); lado = sign(velh);}
			if(abs(velh) > .4) velh = lerp(velh, 0, acel*2); else velh = 0;	
			if(abs(velv) > .4) velv = lerp(velv, 0, acel*2); else velv = 0;
		}*/
	
	
	//Aplicando movimento no inimigo
	
	
	}
}

//collision(other.id);