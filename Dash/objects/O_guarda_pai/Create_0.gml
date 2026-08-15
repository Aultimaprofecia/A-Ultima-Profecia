// ESTADO
estado = 0;

// VELOCIDADE
vel = 1;

// DIREÇÃO
direcao = 1;

// DISTÂNCIA DA PATRULHA
distancia_patrulha = 100;

// POSIÇÃO INICIAL
x_inicial = x;
y_inicial = y;

// VISÃO
distancia_visao = 200;
// ==============================
// SISTEMA DE DESPISTE
// ==============================

tempo_procurando = 0;
tempo_max_procurando = room_speed * 3;

ultimo_x = x;
ultimo_y = y;

estado = 0;

// 0 = patrulhando
// 1 = perseguindo
// 2 = procurando