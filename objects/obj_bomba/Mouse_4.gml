var _comidas = [obj_brocolis, obj_cachorro_quente, obj_x_salada, obj_pudim, obj_sorvete];
var _lista_comida = ds_list_create();
var _numero = collision_circle_list(x, y, 16, _comidas, false, true, _lista_comida, false);

if (_numero > 0)
{
	for(var i = 0; i < _numero; i++)
	{
		instance_destroy(_lista_comida[| i]);	
		global.pontos += 1;
	}
}
ds_list_destroy(_lista_comida);
instance_destroy();