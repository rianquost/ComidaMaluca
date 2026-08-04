global.pontos = 0;
global.quantidade_comida = 80;
global.restart = false;
global.fonte = fnt_padrao;
global.qtd_tornado = 16;

// Upgrades

global.tem_bomba = true;
global.tem_fogo = true;
global.tem_tornado = true;

function spawnar_tornado()
{
	while(global.qtd_tornado > 0){
		randomise();
		var grid_x = round(random_range(1, 10))
		var grid_y = round(random_range(1, 10))
		var pos_x = 16 * grid_x;
		var pos_y = 16 * grid_y;
	
		instance_create_layer(pos_x, pos_y, "Instances", obj_tornado);
	
		global.spawnado = true;
		global.qtd_tornado -= 1;	
	}

}