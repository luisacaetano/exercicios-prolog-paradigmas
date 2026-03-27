% Exercício 13: Dada uma lista e dois inteiros, K e N, insere N na K-ésima posição da lista.
% Exemplo: ?- insere([a,b,c,d,e,f,g,h], alfa, 2, L).
% L = [a,alfa,b,c,d,e,f,g,h]

% Caso base: K = 1, insere no início
insere(Lista, N, 1, [N|Lista]).

% Caso recursivo: mantém a cabeça, decrementa K
insere([H|T], N, K, [H|L]) :-
    K > 1,
    K1 is K - 1,
    insere(T, N, K1, L).
