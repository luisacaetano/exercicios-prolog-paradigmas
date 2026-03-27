% Exercício 22: Fatoração em primos
% Exemplo: ?- fatora(315, L).
% L = [3, 3, 5, 7]

% Inicia fatoração a partir de 2
fatora(N, L) :-
    N > 1,
    fatora(N, 2, L).

% Caso base: N = 1, não há mais fatores
fatora(1, _, []).

% Caso 1: F divide N → adiciona F e continua com N/F
fatora(N, F, [F|L]) :-
    N > 1,
    N mod F =:= 0,
    N1 is N // F,
    fatora(N1, F, L).

% Caso 2: F não divide N → tenta próximo fator
fatora(N, F, L) :-
    N > 1,
    N mod F =\= 0,
    F1 is F + 1,
    fatora(N, F1, L).
