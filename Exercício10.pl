% Exercício 10: Dada uma lista e dois pontos de corte, faz uma cópia da sublista.
% Exemplo: ?- sublista([a,b,c,d,e,f,g,h,i,j,k], 3, 7, L).
% L = [c,d,e,f,g]

sublista(Lista, Inicio, Fim, L) :-
    I1 is Inicio - 1,
    Tamanho is Fim - Inicio + 1,
    divide(Lista, I1, _, Resto),
    divide(Resto, Tamanho, L, _).

% --- Divide do exercício 9 ---

divide(Lista, 0, [], Lista).
divide([H|T], N, [H|L1], L2) :-
    N > 0,
    N1 is N - 1,
    divide(T, N1, L1, L2).
