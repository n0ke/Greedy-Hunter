if (global.shotgun.ammo >= preco[upgrade]) and distance_to_object(obj_player) < 32{
	
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
	
	with(obj_upgrade) SE_MATA;
	
}