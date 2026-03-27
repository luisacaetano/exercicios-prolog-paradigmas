% Exercício 21: Maior Divisor Comum (Algoritmo de Euclides)
% Exemplo: ?- gcd(36, 63, G).
% G = 9

% Caso base: gcd(A, 0) = A
gcd(A, 0, A).

% Caso recursivo: gcd(A, B) = gcd(B, A mod B)
gcd(A, B, G) :-
    B > 0,
    R is A mod B,
    gcd(B, R, G).
