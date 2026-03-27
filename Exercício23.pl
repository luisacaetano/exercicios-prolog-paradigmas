% Exercício 23: Merge Sort
% Exemplo: ?- mergesort([23,4,5,13,4], S).
% S = [4, 4, 5, 13, 23]

% Caso base: lista vazia ou com 1 elemento
mergesort([], []).
mergesort([X], [X]).

% Caso recursivo: divide, ordena, combina
mergesort(Lista, Ordenada) :-
    Lista = [_,_|_],
    divide(Lista, L1, L2),
    mergesort(L1, O1),
    mergesort(L2, O2),
    merge(O1, O2, Ordenada).

% Divide lista em duas metades (alternando elementos)
divide([], [], []).
divide([X], [X], []).
divide([X,Y|T], [X|T1], [Y|T2]) :-
    divide(T, T1, T2).

% Merge: combina duas listas ordenadas
merge([], L, L).
merge(L, [], L).
merge([H1|T1], [H2|T2], [H1|M]) :-
    H1 =< H2,
    merge(T1, [H2|T2], M).
merge([H1|T1], [H2|T2], [H2|M]) :-
    H1 > H2,
    merge([H1|T1], T2, M).
