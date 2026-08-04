other.sprite_index = spr_efeito_coleta;
other.pressionado = true;
if(!other.coletado)
{
	other.coletado = true;	
	global.pontos += 1;
}
else
{
	exit;	
}

if(image_index >= image_number - image_speed and sprite_index = spr_efeito_coleta)
{
	instance_destroy(other);	
}

