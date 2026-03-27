% Exercício 28: Grafo de Cidades e Estradas
% Fato: estrada(Id, Cidade1, Cidade2, Distancia)

% === BASE DE CONHECIMENTO ===

% Estradas (bidirecionais)
estrada(e1, fortaleza, caucaia, 20).
estrada(e2, fortaleza, maracanau, 25).
estrada(e3, fortaleza, aquiraz, 30).
estrada(e4, caucaia, maranguape, 35).
estrada(e5, maracanau, maranguape, 15).
estrada(e6, maracanau, pacatuba, 20).
estrada(e7, aquiraz, eusebio, 10).
estrada(e8, eusebio, fortaleza, 15).

% === PREDICADOS ===

% 1. Verifica se duas cidades sao vizinhas (estrada direta)
vizinhas(X, Y) :-
    estrada(_, X, Y, _).
vizinhas(X, Y) :-
    estrada(_, Y, X, _).

% 2. Verifica se duas cidades sao conectadas e retorna o caminho
conectadas(X, Y, Caminho) :-
    conectadas(X, Y, [X], Caminho).

% Auxiliar com lista de visitados (evita ciclos)
conectadas(X, X, Visitados, Caminho) :-
    reverse(Visitados, Caminho).

conectadas(X, Y, Visitados, Caminho) :-
    vizinhas(X, Z),
    \+ member(Z, Visitados),
    conectadas(Z, Y, [Z|Visitados], Caminho).
