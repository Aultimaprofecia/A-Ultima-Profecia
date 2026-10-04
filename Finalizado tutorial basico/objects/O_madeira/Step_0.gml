var distancia = point_distance(x, y, O_pai.x, O_pai.y);

perto = distancia < 40;

if (perto && !coletado)
{
    if (keyboard_check_pressed(ord("E")))
    {
        coletado = true;
        global.madeiras_coletadas += 1;
    }
}

if (coletado)
{
    instance_destroy();
}