/// @description Insert description here
// You can write your code in this editor




event_inherited();

if(step)
{
	if(instance_exists(obj_player) )
	{
		var _dist = point_distance(x, y, target.x, target.y);
		var _dir  = point_direction(x, y, target.x, target.y+30);
		
		
		if(estado_timer > 0) estado_timer--; //Tempo para trocar de estado
		if(wait_timer > 0) wait_timer--;	 //Tempo de espera para atacar
		
		
		//Se eu vejo player
		if(_dist < range && wait_timer <= 0)
		{
			gun_angle = _dir;
			
			//Fazendo o inimigo "olhar" pro player
			if(target.x < x){ xscale = -1; lado = -1; }
			else{ xscale = 1; lado = 1; }
			
			var inc = irandom_range(-15, 15);
			
			if(estado_timer <= 0)
			{
				//Definindo se o inimigo pode atirar ou não
				if(random(4) < 4) pode_atirar = true;
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
						segue = true;
						estado_timer = estado_timer_max/4;
					}	
				}
			}
			
			//Seguindo o player
			if(segue)
			{
				velh = lerp(velh, lengthdir_x(vel, _dir + inc), acel) ;
				velv = lerp(velv, lengthdir_y(vel, _dir + inc), acel) ;	
			}
			else //Ficando parado
			{
				if(abs(velh) > .4) velh = lerp(velh, 0, acel*2); else velh = 0;	
				if(abs(velv) > .4) velv = lerp(velv, 0, acel*2); else velv = 0;	
			}	
		}
		else //Se eu não vejo o player
		{	
			if(velh != 0){ xscale = sign(velh); lado = sign(velh);}
			if(abs(velh) > .4) velh = lerp(velh, 0, acel*2); else velh = 0;	
			if(abs(velv) > .4) velv = lerp(velv, 0, acel*2); else velv = 0;
		}
	
	
	//Aplicando movimento no inimigo
	x += velh;
	y += velv;
	
	}
}


