instancia = noone;
explodiu = false;

function explosaoConjunta(instancia)
{
	
	//Verifico se a bomba explodiu, caso sim dou um return para continuar vasculhando a lista, caso não sigo o código da explosão.
	if(instancia.explodiu)
	{
		return;	
	}
	else if(!instancia.explodiu)
	{
		instancia.explodiu = true;	
	}
	
	var _comidas = [obj_brocolis, obj_cachorro_quente, obj_x_salada, obj_pudim, obj_sorvete, obj_bomba];
	var _lista_comida = ds_list_create();
	var _numero = collision_circle_list(instancia.x, instancia.y, 32, _comidas, false, true, _lista_comida, false);

	if (_numero > 0)
	{
		for(var i = 0; i < _numero; i++)
		{
			var alvo = _lista_comida[| i];
			if(alvo.object_index == obj_brocolis) {
				if(!alvo.coletado) {
					alvo.coletado = true;
					global.pontos += 5;
				}
			}
			else if(alvo.object_index == obj_bomba){
				explosaoConjunta(alvo);	
			}
			else
			{
				if(!alvo.coletado)
				{
					alvo.coletado = true;
					global.pontos += 1;		
				}
			}
			alvo.sprite_index = spr_efeito_coleta;	
			if(alvo.image_index >= alvo.image_number - 1 and alvo.sprite_index == spr_efeito_coleta)
			{
				instance_destroy(alvo);	
			}
		}
	}
	ds_list_destroy(_lista_comida);
	audio_play_sound(snd_explosao, 1, 0);
	sprite_index = spr_efeito_coleta;
	image_index = 0;
	image_speed = 1;	
}