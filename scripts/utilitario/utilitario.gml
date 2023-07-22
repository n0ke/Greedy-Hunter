function random_amp(amp) { return random_range(-amp * .5, amp * .5) };

function spark(_x, _y, spd, dir, spread, amount, _decay, color1, color2, width_reduction){
	for (var i = 0; i < amount; i++){
		instance_create_depth(_x, _y, depth + 1, obj_spark,{
				speed: spd,
				direction: dir + random_amp(spread),
				decay: _decay * random_range(.66, 1),
				c1: color1,
				c2: color2,
				w: width_reduction
			}
		)
	}
}