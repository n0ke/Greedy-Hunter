/*with(other)
{
	if(cooldown_hit <= 0)
	{
		velh = lengthdir_x(4, other.direction);
		velv = lengthdir_y(4, other.direction);
		
		vida -= other.damage;
		
		tempo_flash = 2;
		tomei_hit = true;
		red_screen_alpha = .4;
		
		global.shake = 3;
	}
}

instance_destroy();