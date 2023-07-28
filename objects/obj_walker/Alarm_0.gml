///@desc Creating Stuff

if(!instance_exists(obj_player))
{
	instance_create_layer(x + sprite_width, bbox_bottom + 16, "Instances", obj_player);
}

//Criando o chao
var _size = 32;
var _x = room_width div _size;
var _y = room_height div _size;

for(var i = 0; i < _x; i++)
{
	for(var j = 0; j < _y; j++)
	{	
		instance_create_layer(0 + (_size * i), 0 + (_size * j), "vacuo", obj_floor);		
	}
}