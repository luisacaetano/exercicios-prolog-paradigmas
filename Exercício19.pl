% Exercício 19: Lista de N inteiros aleatórios entre A e B
% Exemplo: ?- sorteioSacola(5, 1, 3, L).
% L = [2, 1, 3, 1, 2] (valores variam)

% Caso base: 0 elementos = lista vazia
sorteioSacola(0, _, _, []).

% Caso recursivo: sorteia um número e continua
sorteioSacola(N, A, B, [X|L]) :-
    N > 0,
    random_between(A, B, X),
    N1 is N - 1,
    sorteioSacola(N1, A, B, L).
