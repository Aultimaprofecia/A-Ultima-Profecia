var distancia = point_distance(x, y, O_pai.x, O_pai.y);

perto = distancia < 40;

if (perto)
{
    if (keyboard_check_pressed(ord("E")))
    {
        // Verifica se este é o pergaminho mais próximo
        var mais_proximo = instance_nearest(O_pai.x, O_pai.y, O_pergaminho);

        if (mais_proximo == id)
        {
            global.pergaminhos += 1;

            instance_create_layer(x, y, "Instances", O_not);

            instance_destroy();
        }
    }
}