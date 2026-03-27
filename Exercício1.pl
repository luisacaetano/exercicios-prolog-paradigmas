% Exercício 1: Dado uma lista, retorne seu último elemento.
% Exemplo: ?- ultimo(X, [a,b,c,d]). 
% X = d

% Caso base: lista com um único elemento
ultimo(X, [X]).

% Caso recursivo: ignora a cabeça, busca na cauda
ultimo(X, [_|Cauda]) :- ultimo(X, Cauda).