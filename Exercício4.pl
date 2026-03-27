% Exercício 4: Dada uma lista, testa se é um palíndromo.
% Exemplo: ?- palindromo(X, [a,b,b,a]).
% X = true

% Usa a função inversa do exercício anterior
inversa([], []).
inversa([H|T], Invertida) :-
    inversa(T, TInvertida),
    append(TInvertida, [H], Invertida).

% É palíndromo se a lista for igual à sua inversa
palindromo(true, Lista) :- inversa(Lista, Lista).
palindromo(false, Lista) :- \+ inversa(Lista, Lista).
