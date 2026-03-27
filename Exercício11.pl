% Exercício 11: Dada uma lista e um inteiro N, rotaciona a lista N posições.
% Exemplo: ?- rotaciona([a,b,c,d,e,f,g,h], 3, L).
% L = [d,e,f,g,h,a,b,c]
% Exemplo: ?- rotaciona([a,b,c,d,e,f,g,h], -2, L).
% L = [g,h,a,b,c,d,e,f]

% Caso: N positivo ou zero
rotaciona(Lista, N, L) :-
    N >= 0,
    divide(Lista, N, L1, L2),
    append(L2, L1, L).

% Caso: N negativo
rotaciona(Lista, N, L) :-
    N < 0,
    length(Lista, Tamanho),
    N1 is Tamanho + N,
    rotaciona(Lista, N1, L).

% --- Divide do exercício 9 ---

divide(Lista, 0, [], Lista).
divide([H|T], N, [H|L1], L2) :-
    N > 0,
    N1 is N - 1,
    divide(T, N1, L1, L2).
