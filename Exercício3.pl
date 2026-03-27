% Exercício 3: Dada uma lista, retorne a lista invertida.
% Exemplo: ?- inversa(X, [a,b,c,d]).
% X = [d,c,b,a]

% Caso base: lista vazia invertida é lista vazia
inversa([], []).

% Caso recursivo: inverte a cauda e coloca a cabeça no final
inversa([H|T], Invertida) :-
    inversa(T, TInvertida),
    append(TInvertida, [H], Invertida).
