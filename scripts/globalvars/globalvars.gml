global.arma_selecionada = "Shotgun"

#macro VERMELHO $000099
#macro VERMEIO $0000ff

global.inventario = [];

global.tempo_pausado = 0;

global.itemDB = [
	
	{	//	Coquinha jelada
		drop_image: spr_cocacola,
		display_image: spr_cocagrande,
		name: "'Cocacola Espumante'",
		description: "Coquinha gelada hummmmm",
		price: 5,
		index: 0
	},
	{	//	Taça Dourada
		drop_image: spr_taca,
		display_image: spr_tacagrande,
		name: "Taça Dourada",
		description: "Parece um tesouro egípcio",
		price: 20,
		index: 1
	},
	{	//	Peteca?
		drop_image: spr_petaca,
		display_image: spr_petecagrande,
		name: "???????",
		description: "É leve, parece uma peteca",
		price: 10,
		index: 1
	},
]

global.mini_font = font_add_sprite_ext(spr_minifont, "!?AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890:.,|/$%-+()_'@<>", true, 1);