if (sprite_index != spr_efeito_coleta) {
	global.pontos += 5;	
}

audio_play_sound(snd_coleta, 1, 0);

sprite_index = spr_efeito_coleta;

image_index = 0;
image_speed = 1;

if(global.restart)
{
	game_restart();	
}