// ==========================================
// POSIÇÃO E TAMANHO DO QUADRO
// ==========================================

var largura = 900;
var altura = 230;

var cx = display_get_gui_width() / 2;
var cy = display_get_gui_height() / 2;

var esquerda = cx - largura / 2;
var cima = cy - altura / 2;
var direita = cx + largura / 2;
var baixo = cy + altura / 2;


// ==========================================
// QUADRO
// ==========================================

if (mensagem <= 6)
{
    // Sombra
    draw_set_alpha(0.5);
    draw_set_color(c_black);

    draw_rectangle(
        esquerda + 8,
        cima + 8,
        direita + 8,
        baixo + 8,
        false
    );


    // Fundo marrom
    draw_set_alpha(0.88);
    draw_set_color(make_color_rgb(55, 30, 15));

    draw_rectangle(
        esquerda,
        cima,
        direita,
        baixo,
        false
    );


    // Borda externa
    draw_set_alpha(1);
    draw_set_color(make_color_rgb(220, 175, 70));

    draw_rectangle(
        esquerda,
        cima,
        direita,
        baixo,
        true
    );


    // Borda interna
    draw_set_color(make_color_rgb(120, 80, 30));

    draw_rectangle(
        esquerda + 7,
        cima + 7,
        direita - 7,
        baixo - 7,
        true
    );


    // ==========================================
    // TEXTO
    // ==========================================

    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_white);


    if (mensagem == 0)
    {
        draw_text_transformed(
            cx,
            cima + 90,
            "Bem-vindo a A Ultima Profecia.\nUma nova jornada comeca agora...",
            1.5,
            1.5,
            0
        );
    }


    if (mensagem == 1)
    {
        draw_text_transformed(
            cx,
            cima + 90,
            "Use W, A, S e D para se movimentar.\nExplore o ambiente e descubra o que este lugar esconde.",
            1.5,
            1.5,
            0
        );
    }


    if (mensagem == 2)
    {
        draw_text_transformed(
            cx,
            cima + 90,
            "Use as setas direcionais para realizar um DASH.\nEle permite que você avance rapidamente e escape de situações perigosas.",
            1.5,
            1.5,
            0
        );
    }


    if (mensagem == 3)
    {
        draw_text_transformed(
            cx,
            cima + 90,
            "Seus DASHs possuem cargas limitadas.\nUse-os com sabedoria, pois eles se recuperam com o tempo.",
            1.5,
            1.5,
            0
        );
    }


    if (mensagem == 4)
    {
        draw_text_transformed(
            cx,
            cima + 90,
            "Seu primeiro objetivo e encontrar os pergaminhos espalhados pela Fortaleza de Kojin.\nMas alguns deles podem estar dificeis de encontrar...",
            1.5,
            1.5,
            0
        );
    }


    if (mensagem == 5)
    {
        draw_text_transformed(
            cx,
            cima + 90,
            "Aquele brilho indica a localização de um pergaminho.\nAproxime-se dele e pressione E para coleta-lo.",
            1.5,
            1.5,
            0
        );
    }


    if (mensagem == 6)
    {
        draw_text_transformed(
            cx,
            cima + 90,
            "Muito bem!\nAgora explore a Fortaleza de Kojin e descubra os segredos que ela esconde.",
            1.5,
            1.5,
            0
        );
    }


    // ==========================================
    // CONTINUAR
    // ==========================================

    draw_set_color(make_color_rgb(240, 200, 90));

    draw_text_transformed(
        direita - 120,
        baixo - 35,
        "[ E ] CONTINUAR",
        1.3,
        1.3,
        0
    );
}


// ==========================================
// RESET
// ==========================================

draw_set_alpha(1);
draw_set_color(c_white);