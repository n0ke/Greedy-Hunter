

function weapon(_nome, _recoil, _dmg, _cadencia, _projetil, _length, _sprite, _ammo, _cdreload) constructor{
	
	nome = _nome;
	recoil = _recoil;
	dmg = _dmg;
	cadencia = _cadencia;
	projetil = _projetil;
	length = _length;
	sprite = _sprite;
	ammo = _ammo;
	cdreload = _cdreload;
	
}

pistola = new weapon("Pistola", 1, 10, 30, obj_bullet, 2, spr_weapon, 10, .02);
