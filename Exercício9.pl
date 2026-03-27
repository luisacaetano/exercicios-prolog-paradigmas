% Exercício 9: Dada uma lista e um ponto de corte, divide a lista em duas partes.
% Exemplo: ?- divide([a,b,c,d,e,f,g,h,i,j,k], 3, L1, L2).
% L1 = [a,b,c]
% L2 = [d,e,f,g,h,i,j,k]

% Caso base: N = 0, L1 vazia, L2 é o restante
divide(Lista, 0, [], Lista).

% Caso recursivo: pega elemento para L1, decrementa N
divide([H|T], N, [H|L1], L2) :-
    N > 0,
    N1 is N - 1,
    divide(T, N1, L1, L2).
