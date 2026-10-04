if (mensagem_aberta)
{
    var centro_x = display_get_gui_width() / 2;
    var centro_y = display_get_gui_height() / 2;

    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    // FUNDO MARROM
    draw_set_color(make_color_rgb(80, 45, 20));

    draw_roundrect(
        centro_x - 300,
        centro_y - 130,
        centro_x + 300,
        centro_y + 130,
        false
    );

    // TÍTULO
    draw_set_color(c_white);

    draw_text_transformed(
        centro_x,
        centro_y - 70,
        "PORTA TRANCADA",
        1.5,
        1.5,
        0
    );

    // MENSAGEM
    draw_text(
        centro_x,
        centro_y,
        mensagem
    );

    // FECHAR
    draw_text(
        centro_x,
        centro_y + 70,
        "[X] Fechar"
    );

    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}