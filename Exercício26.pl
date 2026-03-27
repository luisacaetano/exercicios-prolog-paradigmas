% Exercício 26: Base de conhecimento de Livros
% Fatos: livro(Titulo, Autor, Editora, Ano)
%        autor(Autor, Nacionalidade)

% === BASE DE CONHECIMENTO ===

% Livros
livro('Dom Casmurro', 'Machado de Assis', 'Garnier', 1899).
livro('Memorias Postumas', 'Machado de Assis', 'Tipografia Nacional', 1881).
livro('O Cortico', 'Aluisio Azevedo', 'Garnier', 1890).
livro('Grande Sertao', 'Guimaraes Rosa', 'Jose Olympio', 1956).
livro('Vidas Secas', 'Graciliano Ramos', 'Jose Olympio', 1938).
livro('Sao Bernardo', 'Graciliano Ramos', 'Ariel', 1934).

% Autores
autor('Machado de Assis', brasileiro).
autor('Aluisio Azevedo', brasileiro).
autor('Guimaraes Rosa', brasileiro).
autor('Graciliano Ramos', brasileiro).

% === PREDICADOS ===

% 1. Descobrir todos os livros de um autor
livros_do_autor(Autor, Livros) :-
    findall(Titulo, livro(Titulo, Autor, _, _), Livros).

% 2. Descobrir todos os autores de uma editora
autores_da_editora(Editora, Autores) :-
    findall(Autor, livro(_, Autor, Editora, _), Lista),
    list_to_set(Lista, Autores).

% 3. Verificar se dois livros sao da mesma editora
mesma_editora(Livro1, Livro2) :-
    livro(Livro1, _, Editora, _),
    livro(Livro2, _, Editora, _),
    Livro1 \= Livro2.
