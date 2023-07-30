if (global.shotgun.ammo >= preco[upgrade]) and distance_to_object(obj_player) < 32{
	
	audio_play_sound(snd_cashmoney, 0, 0);
	instance_create_depth(x, y - 24, depth, obj_pop, {lerpval: .4, width: 12});
	spark(x, y - 24, 10, 0, 360, 15, .95, #ffffff, #FFffff, 2, 0);
	
	switch(upgrade){
		
		case UPGRADES.CADENCIA: {
			
			global.shotgun.cadencia -= (global.shotgun.cadencia >= 1);
			
		}break;
		
		case UPGRADES.PRECISAO: {
			
			global.spread -= (global.spread > 1);
			
		}break;
		
		case UPGRADES.DANO: {
			
			global.shotgun.dmg++;
			
		}break;
		
		case UPGRADES.VELOCIDADE: {
			
			global.bulletsp++;
			
		}break;
			
	}
	
	global.shotgun.ammo -= preco[upgrade];
	
	with(id) SE_MATA;
	
}