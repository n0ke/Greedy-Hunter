var _width = 4;
var _length = array_length(trail);
for(var i = 0; i < _length; i++){
	if (i != _length - 1){
		draw_line_width_color(trail[i].x, trail[i].y, trail[i + 1].x, trail[i + 1].y, lerp(0, _width, (_length - i) / _length), #FFC825, #FFC825);
	}
}

/*
draw_sprite_ext(
	sprite_index,
	image_index,
	x,
	y,
	speed / (sprite_width * .75),
	1,
	direction,
	$ffffff,
	1
);

