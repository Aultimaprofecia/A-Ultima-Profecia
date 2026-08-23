// ==========================================
// DANO DO GUARDA
// ==========================================

var hud = instance_find(O_vidas, 0);

if (instance_exists(hud))
{
    if (!hud.invulneravel)
    {
        hud.vidas -= 1;
        hud.invulneravel = true;

        // 1 segundo de invulnerabilidade
        alarm[0] = room_speed;

        // ==================================
        // SEM VIDAS
        // ==================================

        if (hud.vidas <= 0)
        {
            room_restart();
        }
    }
}