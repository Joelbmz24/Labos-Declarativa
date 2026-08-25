:- [base].

% Regla 1: Coincidencia de personajes

coinciden_en_lugar(P1, P2, Lugar) :-
    ubicacion(P1, Lugar),
    ubicacion(P2, Lugar),
    P1 \= P2.

% Regla 2: Personaje armado para combate a distancia
listo_para_combate_distancia(Personaje) :-
    armado_con(Personaje, pistola),
    edad(Personaje, Edad),
    Edad > 25.

% Regla 3: Zona de alto riesgo para un personaje
zona_de_alto_riesgo(Personaje, Zona) :-
    ubicacion(Personaje, Zona),
    (dificultad(Zona, alta) ; dificultad(Zona, muy_alta)),
    aparece_en(_, Zona).

% Regla 4 (Opcional): Solo combate cuerpo a cuerpo
solo_cuerpo_a_cuerpo(Personaje) :-
    armado_con(Personaje, cuchillo),
    \+ armado_con(Personaje, pistola).