% Exercício 17: Máximo de uma lista
% Exemplo: ?- max_lista([3, 1, 7, 2, 5], Max).
% Max = 7

% Caso base: lista com um elemento
max_lista([X], X).

% Caso recursivo: compara cabeça com máximo da cauda
max_lista([H|T], Max) :-
    max_lista(T, MaxT),
    (H > MaxT -> Max = H ; Max = MaxT).
