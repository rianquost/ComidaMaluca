draw_self();

draw_set_font(global.fonte);

var _texto = "Score: " + string(global.pontos);

draw_text(xstart - 50, ystart, _texto);