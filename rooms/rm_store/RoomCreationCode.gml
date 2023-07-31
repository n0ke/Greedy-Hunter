if audio_is_playing(mus_main) audio_sound_gain(mus_main, 0, 300);

if !audio_is_playing(mus_store){
	audio_play_sound(mus_store, 0, true, .125);
} else {
	audio_sound_gain(mus_store, 1, 300);
}