% Exercício 25: Bubble Sort
% Exemplo: ?- bubblesort([23,4,5,13,4], S).
% S = [4, 4, 5, 13, 23]

% Bubble sort: faz passadas até não haver trocas
bubblesort(Lista, Ordenada) :-
    passada(Lista, L1, Trocou),
    (Trocou == sim
        -> bubblesort(L1, Ordenada)
        ; Ordenada = L1).

% Passada: percorre lista trocando adjacentes fora de ordem
passada([], [], nao).
passada([X], [X], nao).
passada([X,Y|T], [X|R], Trocou) :-
    X =< Y,
    passada([Y|T], R, Trocou).
passada([X,Y|T], [Y|R], sim) :-
    X > Y,
    passada([X|T], R, _).
