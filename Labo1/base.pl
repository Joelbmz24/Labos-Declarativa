
% Roles 
agente(leon).
estudiante(ashley).
espia(ada).
investigador(luis).

% Enemigos e Infecciones 
enemigo(ganados).
enemigo(regeneradores).
infectado_por_plagas(ganados).
infectado_por_plagas(regeneradores).

% Edades (Aridad 2)
edad(leon, 27).
edad(ashley, 20).
edad(ada, 26).
edad(luis, 32).

% Armamento
armado_con(leon, pistola).
armado_con(leon, cuchillo).
armado_con(ada, pistola).
armado_con(luis, cuchillo).

% Aparición de Enemigos
aparece_en(ganados, pueblo).
aparece_en(ganados, castillo).
aparece_en(regeneradores, isla).

% Ubicación de Personajes
ubicacion(leon, pueblo).
ubicacion(luis, pueblo).
ubicacion(ada, pueblo).
ubicacion(ada, castillo).

%Dificultad de Zonas
dificultad(pueblo, alta).
dificultad(castillo, alta).
dificultad(isla, muy_alta).