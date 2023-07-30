if pedestal{
	audio_play_sound(snd_cashmoney, 0, 0);
	instance_create_depth(x, y - 24, depth, obj_pop, {lerpval: .4, width: 12});
	spark(x, y - 24, 10, 0, 360, 15, .95, #ffffff, #FFffff, 2, 0);
}












