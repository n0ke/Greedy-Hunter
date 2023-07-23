instance_create_layer(x, y, "Balas", obj_pop, { width: irandom_range(4, 16), lerpval : .8 });
spark(x, y, 20, direction - 180, 40, 4, .9, #ffffff, #FFEB57, 4, 0);
audio_play_sound(snd_hit_solid, 0, false, , , random_range(.8, 1.2));