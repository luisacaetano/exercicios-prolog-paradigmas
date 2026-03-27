% Exercício 14: Cria uma lista contendo os inteiros de um intervalo.
% Exemplo: ?- range(4, 9, L).
% L = [4,5,6,7,8,9]

% Caso base: início = fim
range(N, N, [N]).

% Caso recursivo: adiciona início, incrementa
range(Inicio, Fim, [Inicio|L]) :-
    Inicio < Fim,
    Inicio1 is Inicio + 1,
    range(Inicio1, Fim, L).
