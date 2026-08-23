// ==========================
// HUD DE VIDAS
// ==========================

var tamanho = 0.25;

// Posição no canto superior direito
var pos_x = display_get_gui_width() - 150;
var pos_y = 50;


// 3 VIDAS
if (vidas == 3)
{
    draw_sprite_ext(
        S_vida_cheia,
        0,
        pos_x,
        pos_y,
        tamanho,
        tamanho,
        0,
        c_white,
        1
    );
}


// 2 VIDAS
else if (vidas == 2)
{
    draw_sprite_ext(
        S_vida_vazia1,
        0,
        pos_x,
        pos_y,
        tamanho,
        tamanho,
        0,
        c_white,
        1
    );
}


// 1 VIDA
else if (vidas == 1)
{
    draw_sprite_ext(
        S_vida_vazia2,
        0,
        pos_x,
        pos_y,
        tamanho,
        tamanho,
        0,
        c_white,
        1
    );
}


// 0 VIDAS
else
{
    draw_sprite_ext(
        S_vida_vazia3,
        0,
        pos_x,
        pos_y,
        tamanho,
        tamanho,
        0,
        c_white,
        1
    );
}
