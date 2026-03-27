% Exercício 16: Fatorial de N
% Exemplo: ?- fatorial(5, F).
% F = 120

% Caso base: 0! = 1
fatorial(0, 1).

% Caso recursivo: N! = N * (N-1)!
fatorial(N, F) :-
    N > 0,
    N1 is N - 1,
    fatorial(N1, F1),
    F is N * F1.
