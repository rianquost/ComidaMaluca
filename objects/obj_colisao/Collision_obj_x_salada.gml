if(!other.coletado)
{
	global.pontos += 1;
	other.coletado = true;
}

instance_destroy(other);