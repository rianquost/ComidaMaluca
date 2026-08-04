draw_self();

if(mouse_em_cima)
{
	draw_set_colour(c_red);	
}
else
{
	draw_set_colour(c_white);
}
var _texto = "Jogar";

draw_set_font(fnt_padrao);
draw_text(x, y, _texto);