% Exercício 20: Verifica se N é primo
% Exemplo: ?- primo(17). → true
%          ?- primo(10). → false

% N é primo se N > 1 e não tem divisores
primo(N) :-
    N > 1,
    N1 is N - 1,
    nao_tem_divisor(N, N1).

% Caso base: chegou em 1, não achou divisor
nao_tem_divisor(_, 1).

% Caso recursivo: D não divide N, testa D-1
nao_tem_divisor(N, D) :-
    D > 1,
    N mod D =\= 0,
    D1 is D - 1,
    nao_tem_divisor(N, D1).
