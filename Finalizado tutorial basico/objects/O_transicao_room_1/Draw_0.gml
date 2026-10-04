draw_self();

if (perto)
{
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    // CAIXA
    draw_set_color(c_black);

    draw_roundrect(
        x - 60,
        y - 65,
        x + 60,
        y - 25,
        false
    );

    // LETRA
    draw_set_color(c_white);

    draw_text(
        x,
        y - 45,
        "[E] Entrar"
    );

    // VOLTAR
    draw_text(
        x,
        y - 15,
        "[V] Voltar"
    );

    // MENSAGEM
    if (tempo_mensagem > 0)
    {
        draw_text(
            x,
            y - 90,
            mensagem
        );
    }

    draw_set_color(c_white);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}