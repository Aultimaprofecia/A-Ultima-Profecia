draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_set_color(c_black);
draw_set_alpha(0.7);

draw_roundrect(
    20, 20,
    260, 100,
    false
);

draw_set_alpha(1);

draw_set_color(c_white);

draw_text(35, 30, "OBJETIVOS");

draw_text(
    35,
    55,
    "📜 Pergaminhos: " + string(global.pergaminhos) + " / 10"
);

draw_set_alpha(1);
if (global.pergaminhos >= 10)
{
    room_goto(RM_guardas1fase);
}