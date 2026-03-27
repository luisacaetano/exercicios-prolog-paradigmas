% Exercício 12: Dada uma lista e um inteiro K, remove o K-ésimo elemento da lista.
% Exemplo: ?- remove(X, [a,b,c,d,e,f,g,h], 3, L).
% X = c
% L = [a,b,d,e,f,g,h]

% Caso base: K = 1, remove a cabeça
remove(X, [X|T], 1, T).

% Caso recursivo: mantém a cabeça, decrementa K
remove(X, [H|T], K, [H|L]) :-
    K > 1,
    K1 is K - 1,
    remove(X, T, K1, L).
