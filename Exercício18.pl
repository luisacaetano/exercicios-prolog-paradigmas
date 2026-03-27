% Exercício 18: Combinação de K elementos
% Exemplo: ?- combinacao(3, [a,b,c,d,e,f], L).
% L = [a,b,c] ; L = [a,b,d] ; ...

% Caso base: combinação de 0 elementos é lista vazia
combinacao(0, _, []).

% Caso recursivo 1: pega a cabeça
combinacao(K, [H|T], [H|Comb]) :-
    K > 0,
    K1 is K - 1,
    combinacao(K1, T, Comb).

% Caso recursivo 2: não pega a cabeça
combinacao(K, [_|T], Comb) :-
    K > 0,
    combinacao(K, T, Comb).
