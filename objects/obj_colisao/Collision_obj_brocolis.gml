if(!other.coletado)
{
	global.pontos += 5;
	other.coletado = true;
}

instance_destroy(other);