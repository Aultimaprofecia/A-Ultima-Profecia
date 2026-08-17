// ==========================================
// HUD - DASH
// ==========================================

var margem = 30;

var caixa_largura = 150;
var caixa_altura = 60;

var caixa_x = display_get_gui_width() - margem - caixa_largura;
var caixa_y = 100;

// Fundo preto
draw_set_color(c_black);
draw_rectangle(
    caixa_x,
    caixa_y,
    caixa_x + caixa_largura,
    caixa_y + caixa_altura,
    false
);


// ==========================================
// TÍTULO
// ==========================================

draw_set_color(c_white);

draw_set_halign(fa_center);
draw_set_valign(fa_top);

draw_text(
    caixa_x + caixa_largura / 2,
    caixa_y + 5,
    "DASH"
);


// ==========================================
// CARGAS
// ==========================================

for (var i = 0; i < dash_cargas_max; i++)
{
    var texto;

    if (i < dash_cargas)
    {
        texto = "!";
    }
    else
    {
        texto = "○";
    }

    draw_text(
        caixa_x + 45 + (i * 30),
        caixa_y + 30,
        texto
    );
}


// ==========================================
// RESET
// ==========================================

draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);