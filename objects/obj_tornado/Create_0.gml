function jogarLonge(instancia)
{
	randomise()
	var vel = random_range(1, 2);
	var direcao = random_range(0, 360);
	
	instancia.speed = vel;
	instancia.direction = direcao;
}

alarm[0] = 180;

/*
function spawnar()
{
	var grid_x = round(random_range(1, 10))
	var grid_y = round(random_range(1, 10))
	var pos_x = 16 * grid_x;
	var pos_y = 16 * grid_y;
	
	instance_create_layer(pos_x, pos_y, "Instances", obj_tornado);
	
	spawnado = true;
	qtd_tornado -= 1;
}
*/