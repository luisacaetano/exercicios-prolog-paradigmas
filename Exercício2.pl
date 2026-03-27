% Exercício 2: Dada uma lista, retorne seu k-ésimo elemento.
% Exemplo: ?- esimo(X, [a,b,c,d,e,f], 3).
% X = c

% Caso base: índice 1 retorna a cabeça
esimo(X, [X|_], 1).

% Caso recursivo: decrementa K e avança na lista
esimo(X, [_|Cauda], K) :-
    K > 1,
    K1 is K - 1,
    esimo(X, Cauda, K1).
