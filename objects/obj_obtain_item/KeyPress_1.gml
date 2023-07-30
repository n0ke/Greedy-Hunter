if paused and ((current_time - created) > 1000){
	audio_play_sound(snd_ui_confirm, 0, 0);
	SE_MATA;
}