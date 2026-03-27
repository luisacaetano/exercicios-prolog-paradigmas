% Exercício 24: Quick Sort
% Exemplo: ?- quicksort([23,4,5,13,4], S).
% S = [4, 4, 5, 13, 23]

% Caso base: lista vazia
quicksort([], []).

% Caso recursivo: particiona, ordena, concatena
quicksort([Pivo|T], Ordenada) :-
    particiona(Pivo, T, Menores, Maiores),
    quicksort(Menores, OrdMenores),
    quicksort(Maiores, OrdMaiores),
    append(OrdMenores, [Pivo|OrdMaiores], Ordenada).

% Particiona lista em menores e maiores que o pivô
particiona(_, [], [], []).
particiona(Pivo, [H|T], [H|Menores], Maiores) :-
    H =< Pivo,
    particiona(Pivo, T, Menores, Maiores).
particiona(Pivo, [H|T], Menores, [H|Maiores]) :-
    H > Pivo,
    particiona(Pivo, T, Menores, Maiores).
