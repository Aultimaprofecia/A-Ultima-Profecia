// ==========================================
// ÍCONE DOS OBJETIVOS
// ==========================================

draw_sprite_ext(
    S_hud_pergaminhos,
    0,
    145,
    65,
    0.18,
    0.18,
    0,
    c_white,
    1
);


// ==========================================
// TEXTOS
// ==========================================
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_set_color(c_black);
draw_text_transformed(
    110,
    75,
    string(global.pergaminhos) + " / 10",
    1.5,
    1.5,
    0
);
draw_set_color(c_white);
draw_text_transformed(
    110,
    120,
    "Madeiras: " + string(global.madeiras_coletadas) + " / 15",
    1.5,
    1.5,
    0
);