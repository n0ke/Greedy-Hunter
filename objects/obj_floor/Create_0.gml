///@desc
randomize();

alarm[0] = 6;

image_speed = 0;
image_index = irandom(image_number) - 1;


inimigo_qtd_max = 12;

spawna = true;
_a = 0;

switch(global.dungeon)
{
	case 0: inimigo_qtd_max = 3; break;	
	case 1: inimigo_qtd_max = irandom_range(5, 7); _a = 0; break;	
	case 2: inimigo_qtd_max = irandom_range(7, 8); _a = 0; break;	
	case 3: inimigo_qtd_max = irandom_range(8, 10); _a = 1; break;	
	case 4: inimigo_qtd_max = irandom_range(8, 10); _a = 2; break;	
	case 5: inimigo_qtd_max = irandom_range(10, 12); _a = 2; break;	
	case 6: inimigo_qtd_max = 1; _a = 3 break;
	default: inimigo_qtd_max = irandom_range(10, 12); _a = 2; break;
}

inimigo[0] = choose(obj_inimigo_1);
inimigo[1] = choose(obj_inimigo_1, obj_inimigo_2);
inimigo[2] = choose(obj_inimigo_1, obj_inimigo_2, obj_inimigo_3);
inimigo[3] = obj_boss;
