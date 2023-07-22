global.area = 0;

#macro CRIA_PAREDE instance_create_layer(x, y, "Instances", obj_colisor)

function Item_Creator(_chest)
{		
	if(instance_exists(obj_player))
	{
		var _playerDist = point_distance(x, y, obj_player.x, obj_player.y);
		var _colisao = collision_circle(x, y, 24, obj_colisor, false, false);
		var _dist = 96;

		
		if(_playerDist > _dist && !_colisao)
		{
			instance_create_layer(x, y, "Instances", _chest);	
		}		
	}		
}
function Cria_Dois(_obj1, _obj2)
{		
	if(instance_exists(obj_player))
	{
		var _playerDist = point_distance(x, y, obj_player.x, obj_player.y);
		var _colisao = collision_circle(x, y, 24, obj_colisor, false, false);
		var _dist = 96;

		
		if(_playerDist > _dist && !_colisao)
		{
			instance_create_layer(x-16, y, "Instances", _obj1);	
			instance_create_layer(x+16, y, "Instances", _obj2);	
		}		
	}		
}

function Drunken_Walk(steps)
{
	randomize();

	var _size = 32;
	var _x = room_width div _size;
	var _y = room_height div _size;
	
	//Criando o vácuo
	for(var i = 0; i < _x; i++)
	{
		for(var j = 0; j < _y; j++)
		{	
			instance_create_layer(x + (_size * i), y + (_size * j), "vacuo", obj_vacuo);		
	
		}
	}
	
	
	//Criando o walker
	if(!instance_exists(obj_walker))
	{
		instance_create_layer(room_width/2, room_height/2, "vacuo", obj_walker);
	}
	
	var dir = 0;
	
	repeat(steps)
	{
		//Escolhendo uma direção
		dir = irandom(3) * 90;
		
		with(obj_walker)
		{
			//Movendo o walker
			x += lengthdir_x(_size, dir);	
			y += lengthdir_y(_size, dir);	
			
			//Destruindo o objeto de vacuo
			var col = instance_place(x, y, obj_vacuo);
			if(col)
			{
				instance_destroy(col); 
			}
			//Limitando para não sair da room
			x = clamp(x, 3 * _size, (_x - 6) * _size);
			y = clamp(y, 3 * _size, (_y - 6) * _size);	
			
		}
	}	
}
