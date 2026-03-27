% Exercício 27: Base de conhecimento de Disciplinas
% Fatos: disciplina(Codigo, Nome)
%        prerequisito(D1, D2) - D1 exige D2
%        aprovado(Aluno, Disciplina)

% === BASE DE CONHECIMENTO ===

% Disciplinas
disciplina(calc1, 'Calculo 1').
disciplina(calc2, 'Calculo 2').
disciplina(calc3, 'Calculo 3').
disciplina(prog1, 'Programacao 1').
disciplina(prog2, 'Programacao 2').
disciplina(ed, 'Estrutura de Dados').
disciplina(bd, 'Banco de Dados').
disciplina(ia, 'Inteligencia Artificial').

% Pre-requisitos (D1 exige D2)
prerequisito(calc2, calc1).
prerequisito(calc3, calc2).
prerequisito(prog2, prog1).
prerequisito(ed, prog2).
prerequisito(bd, ed).
prerequisito(ia, ed).
prerequisito(ia, calc2).

% Historico de alunos (aprovacoes)
aprovado(joao, calc1).
aprovado(joao, calc2).
aprovado(joao, prog1).
aprovado(joao, prog2).
aprovado(maria, calc1).
aprovado(maria, prog1).
aprovado(maria, prog2).
aprovado(maria, ed).

% === PREDICADOS ===

% 1. Verifica se D1 exige diretamente D2
exige(D1, D2) :-
    prerequisito(D1, D2).

% 2. Verifica se D1 exige D2 indiretamente (cadeia de pre-requisitos)
exige_indiretamente(D1, D2) :-
    prerequisito(D1, X),
    (X = D2 ; exige_indiretamente(X, D2)).

% 3. Verifica se aluno pode cursar disciplina
%    (deve ter sido aprovado em TODOS os pre-requisitos)
pode_cursar(Aluno, Disciplina) :-
    disciplina(Disciplina, _),
    \+ aprovado(Aluno, Disciplina),
    findall(Pre, prerequisito(Disciplina, Pre), Prerequisitos),
    todos_aprovados(Aluno, Prerequisitos).

% Auxiliar: verifica se aluno foi aprovado em todas as disciplinas da lista
todos_aprovados(_, []).
todos_aprovados(Aluno, [D|Resto]) :-
    aprovado(Aluno, D),
    todos_aprovados(Aluno, Resto).
