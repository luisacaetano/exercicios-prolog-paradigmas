% Exercício 30: Problema das 8 Damas

% Resolver o problema das N damas
damas(N, Solucao) :-
    numlist(1, N, Lista),
    permutacao(Lista, Solucao),
    seguro(Solucao).

% Gera permutacoes da lista
permutacao([], []).
permutacao(Lista, [H|Perm]) :-
    seleciona(H, Lista, Resto),
    permutacao(Resto, Perm).

seleciona(X, [X|T], T).
seleciona(X, [H|T], [H|R]) :-
    seleciona(X, T, R).

% Verifica se nenhuma dama ataca outra
seguro([]).
seguro([L|Resto]) :-
    nao_ataca(L, Resto, 1),
    seguro(Resto).

% Verifica se dama na linha L nao ataca nenhuma das outras
nao_ataca(_, [], _).
nao_ataca(L, [L2|Resto], Dist) :-
    L =\= L2,
    abs(L - L2) =\= Dist,
    Dist1 is Dist + 1,
    nao_ataca(L, Resto, Dist1).

% Gera lista de 1 a N
numlist(N, N, [N]).
numlist(I, N, [I|Resto]) :-
    I < N,
    I1 is I + 1,
    numlist(I1, N, Resto).
