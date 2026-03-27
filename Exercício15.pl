% Exercício 15: Contagem regressiva de N até 0
% Exemplo: ?- contagem(5).
% Saída: 5 4 3 2 1 0

% Caso base: chegou em 0
contagem(0) :-
    write(0), nl.

% Caso recursivo: imprime N e continua
contagem(N) :-
    N > 0,
    write(N), nl,
    N1 is N - 1,
    contagem(N1).
