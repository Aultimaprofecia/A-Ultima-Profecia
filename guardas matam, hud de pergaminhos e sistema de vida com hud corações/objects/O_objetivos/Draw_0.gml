// ==========================================
// HUD DE OBJETIVOS - PERGAMINHOS
// ==========================================

// Configuração
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_alpha(1);
draw_set_color(c_black);


// ==========================================
// PLACA
// ==========================================

draw_sprite_ext(
    S_hud_pergaminhos,
    0,
    145,
    65,
    0.12,
    0.12,
    0,
    c_white,
    1
);


// ==========================================
// TÍTULO
// ==========================================





// ==========================================
// CONTADOR
// ==========================================

draw_text(
    145,
    78,
    string(global.pergaminhos) + " / 10"
);


// ==========================================
// RESETAR CONFIGURAÇÕES DO DRAW
// ==========================================

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_alpha(1);
draw_set_color(c_white);


// ==========================================
// PASSAR DE ROOM AO PEGAR 10
// ==========================================

if (global.pergaminhos >= 10)
{
    room_goto(RM_guardas1fase);
}