
event_inherited();

vida = 500;
vida_max = 500;

vel = 1.66;
spr_idle = spr_boss_idle;
spr_move = spr_boss_walk;
spr_attk = spr_boss_attack;

attacking = 0;

range_min = 150;
range_max = 200;

range = range_min;

damage = 45;

estado_timer = 0;
estado_timer_max = irandom_range(1, 4) * room_speed;

wait_timer = 0;
wait_timer_max = 48;

segue = false;

tem_arma = true;

projetil = obj_projetil_robo_atirador;
projetil_speed = 3;

accuracy = 5;

gun_angle = 0;
gun_xscale = 1;
gun_yscale = 1;
pode_atirar = false;

atirando = function()
{
	var _dir = point_direction(x, y, target.x, target.y+30);
	var _x = x + lengthdir_x(23, _dir);
	var _y = y + lengthdir_y(23, _dir) - 29;
	var _direcao = gun_angle + irandom_range(-accuracy, accuracy);
	if(obj_player.speed != 0) _direcao = gun_angle + irandom_range(-accuracy, accuracy);
	else _direcao = gun_angle;
	var _bala = instance_create_layer(_x, _y, "Instances", projetil);
	_bala.speed = projetil_speed 
	_bala.angle = _direcao;
	_bala.damage = damage;
	_bala.direction = _direcao;
}

while(place_meeting(x, y, obj_vacuo)){
	y--
}


