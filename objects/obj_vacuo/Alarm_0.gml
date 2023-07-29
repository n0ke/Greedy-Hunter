///@desc Tile Conection

var l = place_meeting(x - 1, y, obj_vacuo), //Esquerda
	r = place_meeting(x + 1, y, obj_vacuo), //Direita
	t = place_meeting(x, y - 1, obj_vacuo), //Cima
	b = place_meeting(x, y + 1, obj_vacuo), //Baixo
	//lt = place_meeting(x - 1, y - 1, obj_vacuo), //Diagonal esquerda cima
	//rt = place_meeting(x + 1, y - 1, obj_vacuo), //Diagonal direita cima
	//lb = place_meeting(x - 1, y + 1, obj_vacuo), //Diagonal esquerda baixo
	//rb = place_meeting(x + 1, y + 1, obj_vacuo), //Diagonal esquerda baixo

//Destruindo blocos órfãos
if(!l && !r && !t && !b) SE_MATA; 	

//Criando colisor nas bordas
if(!l && r  && t  && b)	 CRIA_PAREDE;
if(l  && !r && t  && b)	 CRIA_PAREDE;
if(l  && r  && !t && b)	 CRIA_PAREDE;
if(l  && r  && t  && !b) CRIA_PAREDE;
if(!l && !r && t  && !b) CRIA_PAREDE;
if(!l && !r && !t && b)  CRIA_PAREDE;
if(!l && r  && !t && !b) CRIA_PAREDE;
if(l  && !r && !t && !b) CRIA_PAREDE;
if(l  && r  && !t && !b) CRIA_PAREDE;
if(!l && !r && t  && b)  CRIA_PAREDE;
if(!l && r  && !t && b)  CRIA_PAREDE;
if(!l && r  && t  && !b) CRIA_PAREDE;
if(l  && !r && t  && !b) CRIA_PAREDE;
if(l  && !r && !t && b)  CRIA_PAREDE;

var a = 0;

//Desenhando o topo da parede
if(!l && r && !t && !b) {a = 0; borda = true;}
else if(l  && r  && !t && !b) {a = 1;	borda = true;}
else if(l  && !r && !t && !b) {a = 2;	borda = true;}
else if(!l && !r && !t && b)  {a = 3;	borda = true;}
else if(!l && r  && !t && b)  {a = 5;	borda = true;}
else if(l  && r  && !t && b)  {a = 6;	borda = true;}
else if(l  && !r && !t && b)  {a = 7;	borda = true;}
else if(!l && !r && t  && b)  {a = 8;	borda = true;}
else if(!l && r  && t  && b)  {a = 10;	borda = true;}
else if(l  && !r && t  && b)  {a = 11;	borda = true;}
else if(!l && !r && t  && !b) {a = 12;	borda = true;}
else if(!l && r  && t  && !b) {a = 15;	borda = true;}
else if(l  && r  && t  && !b) {a = 16;	borda = true;}
else if(l  && !r && t  && !b) {a = 17;	borda = true;}
else if(l  && r  && t  && b)  {a = 20;	borda = false;}

var l2 = place_meeting(x - 33, y, obj_vacuo), //Esquerda
	r2 = place_meeting(x + 33, y, obj_vacuo), //Direita
	t2 = place_meeting(x, y - 33, obj_vacuo), //Cima
	b2 = place_meeting(x, y + 33, obj_vacuo), //Baixo
	
if(!borda && (!l2 || !r2 || !t2 || !b2)) {a = 21;}

image_index = a;