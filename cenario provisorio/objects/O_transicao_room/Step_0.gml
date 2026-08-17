var distancia = point_distance(x, y, O_pai.x, O_pai.y);

perto = distancia < 40;

if (perto)
{
    if (keyboard_check_pressed(ord("E")))
    {
        var mais_proximo = instance_nearest(O_pai.x, O_pai.y, O_transicao_room);

        if (mais_proximo == id)
        {
            room_goto_next();
        }
    }
}