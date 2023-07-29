 ///@desc

if(iniciar_ia > 0) iniciar_ia--;

if(iniciar_ia <= 0) step = true;

if(step)
{
	//Fazendo a barra de vida se movimentar bonitinho
	hp = lerp(hp, vida, .3);
	follow = lerp(follow, vida, .08);
	
	//Trocando sprite
	if(velh != 0 || velv != 0) 
	{
		if(sprite_index != spr_attk)sprite_index = spr_move;
		
		//Dustwalk
		var _x = irandom_range(bbox_left, bbox_right)
		
	}
	else if(sprite_index != spr_attk) sprite_index = spr_idle;
	
	//Tempo para poder tomar um hit
	if(cooldown_hit > 0) cooldown_hit--;
	
	//Estou tomando dano
	if(tempo_flash > 0)
	{
		
		tomei_hit = true;
		
		range_timer = range_timer_max;
		
		//Squish and stretch
		xscale = .6;
		yscale = 1.4;
		
		tempo_flash-=.5;
	}
	else
	{
		tomei_hit = false;	
	}
	
	//Mudando o tamanho da range
	if(range_timer > 0)
	{
		range_timer--;
		range = range_max;
	}
	else
	{
		range = range_min;	
	}
	
	
	//Voltando a escala ao normal
	xscale = lerp(xscale, lado, .15);
	yscale = lerp(yscale, 1, .15);
	
	
	//Morrendo
	if(vida <= 0)
	{
		if (random(2) < 1) instance_create_layer(x, y, "Instances", obj_item, {pedestal: false, item: global.itemDB[irandom(array_length(global.itemDB) - 1)]});
		repeat(20)
		{
			var blood = instance_create_layer(x,y,"Vacuo",obj_blood)
		}	
			
		SE_MATA;
	}
	
	//Arruma isso aqui
	collision(obj_colisor);
	collision(obj_vacuo);
}

//Profundidade
depth = -bbox_bottom;
