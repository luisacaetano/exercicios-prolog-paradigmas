% Exercício 29: Coloracao de Grafos - Sudeste do Brasil

% Fronteiras entre estados
fronteira(sp, mg).
fronteira(sp, rj).
fronteira(mg, rj).
fronteira(mg, es).
fronteira(rj, es).

% Fronteira eh bidirecional
vizinho(X, Y) :- fronteira(X, Y).
vizinho(X, Y) :- fronteira(Y, X).

% Cores disponiveis
cor(vermelho).
cor(azul).
cor(verde).
cor(amarelo).

% Colorir o mapa: atribui cor a cada estado
% colorir(CorSP, CorMG, CorRJ, CorES)
colorir(SP, MG, RJ, ES) :-
    cor(SP), cor(MG), cor(RJ), cor(ES),
    SP \= MG,
    SP \= RJ,
    MG \= RJ,
    MG \= ES,
    RJ \= ES.
