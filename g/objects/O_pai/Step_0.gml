// ==========================================
// PEGAR INPUT
// ==========================================

var mov_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var mov_y = keyboard_check(ord("S")) - keyboard_check(ord("W"));


// ==========================================
// NORMALIZAR DIAGONAL
// ==========================================

if (mov_x != 0 || mov_y != 0)
{
    var comprimento = point_distance(0, 0, mov_x, mov_y);

    mov_x /= comprimento;
    mov_y /= comprimento;
}


// ==========================================
// ESCOLHER SPRITE DE MOVIMENTO
// ==========================================

if (mov_x != 0 || mov_y != 0)
{
    // --------------------------------------
    // MOVIMENTO HORIZONTAL
    // --------------------------------------

    if (abs(mov_x) > abs(mov_y))
    {
        sprite_index = sprite_walk_side;

        if (mov_x > 0)
        {
            image_xscale = 1;
        }
        else
        {
            image_xscale = -1;
        }
    }


    // --------------------------------------
    // MOVIMENTO VERTICAL
    // --------------------------------------

    else
    {
        image_xscale = 1;

        if (mov_y > 0)
        {
            // PARA BAIXO
            sprite_index = sprite_walk_front;
        }
        else
        {
            // PARA CIMA
            sprite_index = sprite_walk_back;
        }
    }

    // Velocidade da animação
    image_speed = 0.5;
}


// ==========================================
// QUANDO ESTÁ PARADO
// ==========================================

else
{
    image_speed = 0;

    // Descobre qual idle usar
    if (sprite_index == sprite_walk_side)
    {
        sprite_index = sprite_idle_side;
    }
    else if (sprite_index == sprite_walk_front)
    {
        sprite_index = sprite_idle_front;
    }
    else if (sprite_index == sprite_walk_back)
    {
        sprite_index = sprite_idle_back;
    }
}


// ==========================================
// COLISÃO HORIZONTAL
// ==========================================

if (!place_meeting(x + mov_x * vel, y, O_parede))
{
    x += mov_x * vel;
}


// ==========================================
// COLISÃO VERTICAL
// ==========================================

if (!place_meeting(x, y + mov_y * vel, O_parede))
{
    y += mov_y * vel;
}


// ==========================================
// PROFUNDIDADE
// ==========================================

depth = -bbox_bottom;