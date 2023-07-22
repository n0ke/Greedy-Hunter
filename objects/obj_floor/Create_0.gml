///@desc
randomize();

alarm[0] = 6;

image_speed = 0;
image_index = irandom(image_number) - 1;


inimigo_qtd_max = 8;

spawna = true;
_a = 0;

//switch(global.area)
//{
//	case 0: inimigo_qtd_max = 0; break;	
//	case 1: inimigo_qtd_max = irandom_range(5, 7); _a = 0; break;	
//	case 2: inimigo_qtd_max = irandom_range(7, 8); _a = 0; break;	
//	case 3: inimigo_qtd_max = irandom_range(8, 10); _a = 1; break;	
//	case 4: inimigo_qtd_max = irandom_range(8, 10); _a = 1; break;	
//	case 5: inimigo_qtd_max = irandom_range(10, 12); _a = 2; break;	
//	case 6: inimigo_qtd_max = 0 break;	
//}

//inimigo[0] = choose(obj_robo_atirador, obj_robo_atirador, obj_olho_mecanico);
//inimigo[1] = choose(obj_robo_atirador, obj_olho_mecanico, obj_robo_atirador, obj_robo_pulante);
//inimigo[2] = choose(obj_robo_atirador, obj_robo_atirador, obj_olho_mecanico, obj_olho_mecanico, obj_robo_pulante);
