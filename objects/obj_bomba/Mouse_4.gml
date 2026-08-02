var _comidas = [obj_brocolis, obj_cachorro_quente, obj_x_salada, obj_pudim, obj_sorvete];
var _lista_comida = ds_list_create();
var _numero = collision_circle_list(x, y, 16, _comidas, false, true, _lista_comida, false);

if (_numero > 0)
{
	for(var i = 0; i < _numero; i++)
	{
		instancia = _lista_comida[| i];
		if(instancia.object_index == obj_brocolis) {
			global.pontos += 5;
		}
		else
		{
			global.pontos += 1;
		}
		instancia.sprite_index = spr_efeito_coleta;	
		if(instancia.image_index >= instancia.image_number - 1 and instancia.sprite_index = spr_efeito_coleta)
		{
			instance_destroy(instancia);	
		}
	}
}
ds_list_destroy(_lista_comida);
sprite_index = spr_efeito_coleta;
image_index = 0;
image_speed = 1;