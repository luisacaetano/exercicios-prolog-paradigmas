% Exercício 8: Dada uma lista, comprime seus elementos no formato [N,E],
% onde N é o número de duplicatas do elemento E,
% mas elementos sem duplicata são copiados simplesmente.
% Exemplo: ?- codifica(X, [a,a,a,a,b,b,c,a,a,d,e,e,e]).
% X = [[4,a],[2,b],c,[2,a],d,[3,e]]

% Predicado principal
codifica(Resultado, Lista) :-
    empacota(Grupos, Lista),
    transforma(Resultado, Grupos).

% --- Transforma grupos no formato desejado ---

% Caso base
transforma([], []).

% Grupo com mais de 1 elemento - [N, E]
transforma([[N,X]|Resto], [[X|Xs]|Grupos]) :-
    length([X|Xs], N),
    N > 1,
    transforma(Resto, Grupos).

% Grupo com 1 elemento - mantém simples
transforma([X|Resto], [[X]|Grupos]) :-
    transforma(Resto, Grupos).

% --- Empacota do exercício 7 ---

empacota([], []).
empacota([[X|Xs]|Resto], [X|T]) :-
    divide(X, T, Xs, Restante),
    empacota(Resto, Restante).

divide(_, [], [], []).
divide(X, [X|T], [X|Xs], Resto) :-
    divide(X, T, Xs, Resto).
divide(X, [Y|T], [], [Y|T]) :-
    X \= Y.
