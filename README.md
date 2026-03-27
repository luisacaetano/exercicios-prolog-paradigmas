# Exercícios de Prolog - Paradigmas de Linguagem

Lista de exercícios em **Prolog** da disciplina de Paradigmas de Linguagem de Programação.

## Conteúdo

30 exercícios cobrindo os principais conceitos de programação lógica em Prolog:

| Exercício | Tema |
|-----------|------|
| 1 | Último elemento de uma lista |
| 2 | Penúltimo elemento |
| 3 | K-ésimo elemento |
| 4 | Tamanho da lista |
| 5 | Achatar lista aninhada |
| 6 | Eliminar duplicatas consecutivas |
| 7 | Agrupar duplicatas consecutivas |
| 8 | Run-length encoding |
| 9 | Dividir lista em duas partes |
| 10 | Extrair sublista |
| 11-20 | Manipulação de listas |
| 21-30 | Exercícios avançados |

## Como executar

### Usando SWI-Prolog

```bash
# Instalar SWI-Prolog (macOS)
brew install swi-prolog

# Carregar um exercício
swipl Exercício1.pl

# Testar
?- ultimo(X, [a,b,c,d]).
X = d.
```

### Usando GNU Prolog

```bash
# Carregar
gprolog --consult-file Exercício1.pl
```

## Exemplo de uso

```prolog
% Exercício 1: Último elemento
?- ultimo(X, [a,b,c,d]).
X = d.

% Exercício 5: Achatar lista
?- achata(X, [a,[b,[c,d],e]]).
X = [a,b,c,d,e].

% Exercício 10: Sublista
?- sublista([a,b,c,d,e,f,g,h,i,j,k], 3, 7, L).
L = [c,d,e,f,g].
```

## Estrutura dos arquivos

Cada arquivo `.pl` contém:
- Comentário explicando o exercício
- Exemplo de uso
- Implementação com casos base e recursivos

## Autora

Luisa Caetano

## Licença

Uso acadêmico.
