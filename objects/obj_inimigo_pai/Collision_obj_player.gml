with(other)
{
	if(cooldown_hit <= 0)
	{
		spd.x = lengthdir_x(16, point_direction(other.x,other.y,obj_player.x,obj_player.y));
		spd.y = lengthdir_y(16, point_direction(other.x,other.y,obj_player.x,obj_player.y));
		sleep(80)
		vida -= other.damage;
		
		tempo_flash = 2;
		tomei_hit = true;
		cooldown_hit = 60
		obj_camera.cameraShake = 50;
		//TODO a tela piscar na vinheta vermelho indicando que tomou dano
		//red_screen_alpha = .4;
		audio_play_sound(snd_hit_player, 0, 0, , , 1 + random_amp(.2));
		obj_camera.vignette_color = #ff0000;

		//global.shake = 3;
	}
}
