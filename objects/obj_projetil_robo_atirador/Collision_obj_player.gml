with(other)
{
	if(cooldown_hit <= 0)
	{
		velh = lengthdir_x(4, other.direction);
		velv = lengthdir_y(4, other.direction);
		
		vida -= other.damage;
		
		tempo_flash = 2;
		tomei_hit = true;
		//TODO a tela piscar na vinheta vermelho indicando que tomou dano
		//red_screen_alpha = .4;
		
		//global.shake = 3;
	}
}
audio_play_sound(snd_hit_player, 0, 0, , , 1 + random_amp(.2));
obj_camera.vignette_color = #ff0000;
instance_destroy();