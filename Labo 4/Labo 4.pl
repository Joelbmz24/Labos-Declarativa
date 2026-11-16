% Caso base: cuando el número tiene un solo dígito (menor a 10)
almacenar(N, [N]) :-
    N < 10, !.

% Caso recursivo: extrae el último dígito con mod y continúa con el cociente entero (//)
almacenar(N, [Digito | Resto]) :-
    N >= 10,
    Digito is N mod 10,
    N_sig is N // 10,
    almacenar(N_sig, Resto).