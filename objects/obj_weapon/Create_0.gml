

function weapon(_nome, _recoil, _dmg, _cadencia, _projetil, _length, _sprite, _ammo, _cdreload,_knockback) constructor{
	
	nome = _nome;
	recoil = _recoil;
	dmg = _dmg;
	cadencia = _cadencia;
	projetil = _projetil;
	length = _length;
	sprite = _sprite;
	ammo = _ammo;
	cdreload = _cdreload;
	knockback = _knockback
	
}

shotgun = new weapon("Shotgun", 10, 8, 8, obj_bullet, 2, spr_weapon, 8, .02,2);

arma_ativa = 
{
		
}

cooldown = 0;
recoil = 0

switch(global.arma_selecionada)
{
	case "Pistola":
	{
		arma_ativa = pistola
		break;
	}
	
	case "Shotgun":
	{
		arma_ativa = shotgun
		break;
	}

}

