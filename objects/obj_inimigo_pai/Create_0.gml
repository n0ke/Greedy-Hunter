///@desc
randomize();

vida = 0;
vida_max = 0;

number_damage = 0;

velh = 0;
velv = 0;
vel  = 1;
acel = .2;

lado = 1;

range = 0;
range_min = 0;
range_max = 0;

range_timer = 0; //Tempo que o range fica aumentado
range_timer_max = 160; 

target = obj_player;

tem_arma = false;

damage = 0;

follow = 0;
hp = 0;

//Sprites
xscale = 1;
yscale = 1;
angle = 0;
alpha = 1;
spr_idle = noone;
spr_move = noone;
spr_attk = noone;

cooldown_hit = 0;
cooldown_hit_max = 0;
tempo_flash = 0;
tomei_hit = false;

corpo_a_corpo = false;

iniciar_ia = room_speed;
step = false;

escudo = false;

alarm[0] = 1;



