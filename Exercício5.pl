% Exercício 5: Dada uma lista estruturada, achata seus elementos numa lista simples.
% Exemplo: ?- achata(X, [a,[b,[c,d],e]]).
% X = [a,b,c,d,e]

% Caso base: lista vazia
achata([], []).

% Caso: cabeça é uma lista - achata ela também
achata(Resultado, [H|T]) :-
    is_list(H),
    achata(HAchatado, H),
    achata(TAchatado, T),
    append(HAchatado, TAchatado, Resultado).

% Caso: cabeça é um átomo - mantém e continua
achata([H|TAchatado], [H|T]) :-
    \+ is_list(H),
    achata(TAchatado, T).
