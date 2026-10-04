var distancia = point_distance(x, y, O_pai.x, O_pai.y);

perto = distancia < 40;

if (perto)
{
    if (keyboard_check_pressed(ord("E")))
    {
        var mais_proximo = instance_nearest(O_pai.x, O_pai.y, O_transicao_room_3);

        if (mais_proximo == id)
        {
            if (global.livro_coletado)
            {
                array_push(global.historico_rooms, room);
                room_goto(RM_guardas1fase);
            }
            else
            {
                mensagem = "Porta trancada!.\nprecisa do livro";
                tempo_mensagem = room_speed * 2;
            }
        }
    }
}

if (tempo_mensagem > 0)
{
    tempo_mensagem--;
}