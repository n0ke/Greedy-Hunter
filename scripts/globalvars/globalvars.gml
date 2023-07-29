global.arma_selecionada = "Shotgun"

#macro VERMELHO $000099
#macro VERMEIO $0000ff

global.inventario = [];

global.tempo_pausado = 0;

global.spread = 8;

global.bulletsp = 30;

ammo = 40;

function weapon(_nome, _recoil, _dmg, _cadencia, _projetil, _length, _sprite, _ammo, _cdreload, _knockback) constructor{
	
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

global.shotgun = new weapon("Shotgun", 10, 8, 7, obj_bullet, 2, spr_weapon, 40, 2,2);

global.itemDB = [
	
	{	//	Coquinha jelada
		drop_image: spr_cocacola,
		display_image: spr_cocagrande,
		name: "'Cocacola Espumante'",
		description: "Coquinha gelada hummmmm",
		price: 5,
		price_df: 5
	},
	{	//	Taça Dourada
		drop_image: spr_taca,
		display_image: spr_tacagrande,
		name: "Taça Dourada",
		description: "Parece um tesouro egípcio",
		price: 20,
		price_df: 20
	},
	{	//	Peteca?
		drop_image: spr_petaca,
		display_image: spr_petecagrande,
		name: "Taco de baseball quebrado",
		description: "Não da pra usar nem pra bater",
		price: 3,
		price_df: 3
	},
]

global.mini_font = font_add_sprite_ext(spr_minifont, "!?AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890:.,|/$%-+()_'@<>", true, 1);