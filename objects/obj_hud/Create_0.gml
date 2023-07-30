if (instance_exists(obj_player))
{
	vida_atual = obj_player.vida
	vida_max = obj_player.vida_max
	
	vida_pos = ((vida_atual / vida_max) * 5.5)
}
else
{
	vida_pos = 0	
}