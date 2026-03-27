% Exercício 6: Dada uma lista, elimine elementos duplicados consecutivos.
% Exemplo: ?- comprime(X, [a,a,a,a,b,b,c,a,a,d,e,e,e]).
% X = [a,b,c,a,d,e]

% Caso base: lista vazia
comprime([], []).

% Caso base: lista com um elemento
comprime([X], [X]).

% Caso: dois primeiros iguais - ignora o primeiro
comprime(Resultado, [H,H|T]) :-
    comprime(Resultado, [H|T]).

% Caso: dois primeiros diferentes - mantém o primeiro
comprime([H1|Resultado], [H1,H2|T]) :-
    H1 \= H2,
    comprime(Resultado, [H2|T]).
