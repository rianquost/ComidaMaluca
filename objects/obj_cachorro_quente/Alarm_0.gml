randomise();
var _distancia = random_range(0, 1)

if (y > ystart + 1)
{
	dir = -_distancia;
}
else if (y < ystart - 1)
{
	dir = _distancia;	
}

y += dir;

alarm[0] = 10;