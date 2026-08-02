var _linhas = 10;
var _colunas = 10;
var _altura = 16;
var _largura = 16;
var _objeto = obj_brocolis;
var _x_grid = 0;
var _y_grid = 0;
var _spawnar = true;
// Criando a grid com 10 linhas e 10 colunas de 16x16

for (i = 1; i <= _linhas; i++)
{
	for (ii = 1; ii <= _colunas; ii++)
	{
		_x_grid = i * _largura;
		_y_grid = ii * _altura;
		
		// Instanciando objetos diferentes
		randomise();
		var _chance = random_range(0, 1);
		var _objeto_escolhido = choose(0, 1);
		
		//Doces
		if (_chance <= 0.20)
		{
			if(_objeto_escolhido = 0)
			{
				_objeto = obj_pudim;	
			}
			else if(_objeto_escolhido = 1)
			{
				_objeto = obj_sorvete	
			}
		}
		
		//Salgados
		else if (_chance > 0.20 and _chance < 0.40)
		{
			if(_objeto_escolhido = 0)
			{
				_objeto = obj_cachorro_quente;
			}
			else if(_objeto_escolhido = 1)
			{
				_objeto = obj_x_salada
			}		
		}
		else if (_chance >= 0.40 and _chance < 0.95)
		{
			_spawnar = false;	
		}
		//Brócolis
		else if (_chance >= 0.95 and _chance < 0.98 and global.tem_bomba) {
				_objeto = obj_bomba
		}
		else
		{
			_objeto = obj_brocolis;	
		}
		
		
		if(_spawnar and global.quantidade_comida > 0) {
			instance_create_layer(_x_grid, _y_grid, "Instances", _objeto);	
			global.quantidade_comida -= 1;
		}
		_spawnar = true;
	}
}