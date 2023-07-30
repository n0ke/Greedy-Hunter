global.arma_selecionada = "Shotgun"

#macro VERMELHO $000099
#macro VERMEIO $0000ff

global.inventario = [];

global.tempo_pausado = 0;

global.spread = 8;

global.bulletsp = 30;

global.dungeon = 0;

global.nextroom = -1;
global.transval = 0;

ammo = 90;

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

global.shotgun = new weapon("Shotgun", 10, 8, 7, obj_bullet, 2, spr_weapon, 90, 2,2);

global.itemDB = [
	
	{	//	Coquinha jelada
		drop_image: spr_cocacola,
		display_image: spr_cocagrande,
		name: "'Cocacola Espumante'",
		description: "Coquinha gelada hummmmm",
		price: 10,
		price_df: 10
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
		price: 6,
		price_df: 6
	},
	{	//	badtothebone.wav
		drop_image: spr_caveiradecoroa,
		display_image: spr_caveiragrande,
		name: "Caveira de Coroa",
		description: "Valioso ou não? Eis a questão...",
		price: 15,
		price_df: 15
	},
	{	//	osso
		drop_image: spr_osso,
		display_image: spr_ossogrande,
		name: "Osso fofinho",
		description: "Duro de roer",
		price: 9,
		price_df: 9
	},
	{	//	Rogerio
		drop_image: spr_rogerio,
		display_image: spr_rogeriogrande,
		name: "Rogério",
		description: "Pedra de estimação",
		price: 30,
		price_df: 30
	},
	{	//	Drip
		drop_image: spr_sapatogelo,
		display_image: spr_sapatogelogrande,
		name: "Sapatos de gelo",
		description: "Eiii! Esses são falsos! São da Shein!",
		price: 14,
		price_df: 14
	},
	{	//	Estatueta
		drop_image: spr_pedraestatua,
		display_image: spr_pedraestautagrande,
		name: "Pedra que parece estatua",
		description: "É só uma pedra, não parece ter sido lapidada, mas é bonita",
		price: 10,
		price_df: 10
	},
]

global.mini_font = font_add_sprite_ext(spr_minifont, "!?AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890:.,|/$%-+()_'@<>", true, 1);