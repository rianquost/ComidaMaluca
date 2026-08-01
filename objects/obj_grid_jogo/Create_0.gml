var _linhas = 10;
var _colunas = 10;
var _altura = 16;
var _largura = 16;
var _objeto = obj_brocolis;
var _x_grid = 0;
var _y_grid = 0;

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
		
		if (_chance <= 0.50)
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
		else if (_chance > 0.50 and _chance <= 0.95)
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
		else
		{
			_objeto = obj_brocolis;	
		}
		
		instance_create_layer(_x_grid, _y_grid, "Instances", _objeto);
	}
}