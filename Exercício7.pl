% Exercício 7: Dada uma lista, empacota elementos duplicados consecutivos em sublistas.
% Exemplo: ?- empacota(X, [a,a,a,a,b,b,c,a,a,d,e,e,e]).
% X = [[a,a,a,a],[b,b],[c],[a,a],[d],[e,e,e]]

% Caso base: lista vazia
empacota([], []).

% Caso recursivo: cria grupo com X e seus iguais consecutivos
empacota([[X|Xs]|Resto], [X|T]) :-
    divide(X, T, Xs, Restante),
    empacota(Resto, Restante).

% divide(Elemento, Lista, IguaisConsecutivos, Restante)
% Caso base: lista vazia
divide(_, [], [], []).

% Caso: elemento igual - adiciona ao grupo
divide(X, [X|T], [X|Xs], Resto) :-
    divide(X, T, Xs, Resto).

% Caso: elemento diferente - para de agrupar
divide(X, [Y|T], [], [Y|T]) :-
    X \= Y.
