function random_amp(amp) { return random_range(-amp * .5, amp * .5) };

function hollow_circle(_x, _y, r1, r2, sn, istart = 0){
    var i; i = istart;
    draw_primitive_begin(pr_trianglestrip);
    repeat (sn + 1){
        var d, dx, dy;
        d = i / sn * 360;
        dx = lengthdir_x(1, d);
        dy = lengthdir_y(1, d);
        draw_vertex(_x + dx * r1, _y + dy * r1);
        draw_vertex(_x + dx * r2, _y + dy * r2);
        i += 1;
    }
    draw_primitive_end();
}

function spark(_x, _y, spd, dir, spread, amount, _decay, color1, color2, width_reduction, _outline_width){
	
	for (var i = 0; i < amount; i++){
		instance_create_layer(_x, _y, "balas", obj_spark,{
				speed: spd,
				direction: dir + random_amp(spread),
				decay: _decay * random_range(.66, 1),
				c1: color1,
				c2: color2,
				w: width_reduction,
				outline_width: _outline_width
			}
		)
	}
}

function collision(obj)
{
	var _velh = sign(velh);
	var _velv = sign(velv);
	
	//Colisão Horizontal
	if(place_meeting(x + velh, y, obj))
	{
		while(!place_meeting(x + _velh, y, obj))
		{
			x += _velh;	
		}
		velh = 0;
	}
	
	//Colisão Vertical
	if(place_meeting(x, y + velv, obj))
	{
		while(!place_meeting(x, y + _velv, obj))
		{
			y += _velv;	
		}
		velv = 0;
	}
}


//	Color Cycle
	//	Dado os parametros a função retorna uma cor que altera a matriz de acordo com a frequência, criando um efeito "arco iris", é veloz pois usa bitwise
function color_cycle(frequency, phase, saturation, value){ return make_color_hsv((current_time * (frequency * 0.0255) + phase) & 255, saturation, value) };

function draw_outline(_x, _y, _string, _xscale = 1, _yscale = 1, _angle,_out ,c1 = c_white,c2 = c_white,c3 = c_white,c4 = c_white){

draw_set_color($000000);

draw_text_transformed(_x + _out, _y, _string, _xscale, _yscale, _angle);
draw_text_transformed(_x, _y + _out, _string, _xscale, _yscale, _angle);
draw_text_transformed(_x - _out, _y, _string, _xscale, _yscale, _angle);
draw_text_transformed(_x, _y - _out, _string, _xscale, _yscale, _angle);

draw_text_transformed(_x + _out, _y + _out, _string, _xscale, _yscale, _angle);
draw_text_transformed(_x - _out, _y + _out, _string, _xscale, _yscale, _angle);
draw_text_transformed(_x - _out, _y - _out, _string, _xscale, _yscale, _angle);
draw_text_transformed(_x + _out, _y - _out, _string, _xscale, _yscale, _angle);

//draw_set_color(c_in);


draw_text_transformed_color(_x, _y, _string, _xscale, _yscale, _angle, c1,c2,c3,c4,1);

}
function draw_outline_ext(_x, _y, _string, _sep, _w, _xscale = 1, _yscale = 1, _angle,_out ,c1 = c_white,c2 = c_white,c3 = c_white,c4 = c_white){

draw_set_color($000000);

draw_text_ext_transformed(_x + _out, _y, _string, _sep, _w, _xscale, _yscale, _angle);
draw_text_ext_transformed(_x, _y + _out, _string, _sep, _w, _xscale, _yscale, _angle);
draw_text_ext_transformed(_x - _out, _y, _string, _sep, _w, _xscale, _yscale, _angle);
draw_text_ext_transformed(_x, _y - _out, _string, _sep, _w, _xscale, _yscale, _angle);

draw_text_ext_transformed(_x + _out, _y + _out, _string, _sep, _w, _xscale, _yscale, _angle);
draw_text_ext_transformed(_x - _out, _y + _out, _string, _sep, _w, _xscale, _yscale, _angle);
draw_text_ext_transformed(_x - _out, _y - _out, _string, _sep, _w, _xscale, _yscale, _angle);
draw_text_ext_transformed(_x + _out, _y - _out, _string, _sep, _w, _xscale, _yscale, _angle);

//draw_set_color(c_in);
draw_text_ext_transformed_color(_x, _y, _string, _sep, _w, _xscale, _yscale, _angle, c1,c2,c3,c4,1);

}
function sleep()
{
var t = current_time + argument0;
while (current_time < t) {};
}

//    Progress Bar
//    Dado as dimensões, cor e progresso, a função desenha uma barra de progresso
function progress_bar(_x, _y, width, height, outline_width, outline_color, bg_color, progress_color, progress){
draw_rectangle_color(_x, _y, _x + width, _y + height, outline_color, outline_color, outline_color, outline_color, false);
draw_rectangle_color(_x + outline_width, _y + outline_width, _x + width - outline_width, _y + height - outline_width, bg_color, bg_color, bg_color, bg_color, false);
if (progress > 0) draw_rectangle_color(_x + outline_width, _y + outline_width, _x + floor(progress * (width - outline_width - 1)) + 1, _y + height - outline_width, progress_color, progress_color, progress_color, progress_color, false);
}

function draw_shadow(argument0, argument1, argument2) {
	var _x = argument0;
	var _y = argument1;
	var rx = argument2;
	var ry = rx / 2;
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_ellipse(_x - rx, _y - ry, _x + rx, _y + ry, false);
	draw_set_color(c_white);
	draw_set_alpha(1.0);



}
	
function elastic(value, value_speed, target, transition_speed, tension){ return lerp(value_speed, (target - value) * transition_speed, tension) };

//	Wrap
//	Envolve o valor dentro do intervalo (abordagem iterativa) (desnecessário pesado).
//	Tipo um clamp de trás pra frente
function wrap(value, _min, _max){
	if (value mod 1 == 0){
		while (value > _max || value < _min){
		    if (value > _max) value += _min - _max - 1;
		    else if (value < _min) value += _max - _min + 1;
		}
		return(value);
	} else {
		var vOld = value + 1;
		while (value != vOld){
		    vOld = value;
		    if (value < _min) value = _max - (_min - value);
		    else if (value > _max) value = _min + (value - _max);
		}
		return(value);
	}
}
		
//	Wrap (rapido)
//	Algoritmo mais simples e leve que envolve o valor dentro do intervalo (precisão baixa).
function qwrap(value, _min, _max){
	if (value > _max) return _min;
	else if (value < _min) return _max;
	else return value;
}

//	Out of range
	//	Dado um alcance, a função retorna se o valor está fora do mesmo.
	function out_of_range(value, _min, _max){ return(value < _min) or (value > _max)};
	
#macro SE_MATA instance_destroy();


function transto(_room){
	
	if !instance_exists(obj_transition) instance_create_depth(x, y, depth, obj_transition);
	
	if global.transval == 0{
		global.transval = 1;
		global.nextroom = _room;
	}
}