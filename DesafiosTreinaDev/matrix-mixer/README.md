# Transformando matrizes

Nesse desafio, você deve implementar o método `matrix_sorter` que, ao receber uma matriz de caracteres `matrix` (composta por números inteiros e letras) e um conjunto de instruções `instructions`, deve fazer as mudanças necessárias em `matrix`. As possíveis instruções e as mudanças que elas exigem estão descritas na tabela abaixo:

| Instrução         | Mudança |
| ----------------  | ----------- |
| LINHA X:ÍMPARES   | Coloque todos os números ímpares da linha x em ordem crescente       |
| LINHA X:PARES     | Coloque todos os números pares da linha x em ordem crescente    |
| LINHA X:ALFABETO  | Coloque todas as letras da linha x em ordem alfabética     |
| COLUNA X:ÍMPARES  | Coloque todos os números ímpares da coluna x em ordem crescente |
| COLUNA X:PARES    | Coloque todos os números pares da coluna x em ordem crescente  |
| COLUNA X:ALFABETO | Coloque todos as letras da coluna x em ordem alfabética  |

- É importante ressaltar que todas as mudanças se referem a apenas um conjunto de caracteres. Se uma mudança exigir que você coloque todos os números pares de uma linha em ordem crescente, você deve alterar apenas as posições dos números pares, **sem alterar as posições dos demais caracteres**. Além disso, o 'X' marcado nas instruções refere-se **ao índice de uma linha ou coluna da matriz**. Veja o exemplo a seguir.

## Exemplo

Considere a matriz e instruções abaixo:

```ruby
    matrix = [['G', 15, 6, 7],
              ['A', 20, 3, 5]]

    instructions = <<~INSTRUCTIONS
      LINHA 0:ÍMPARES
      COLUNA 0:ALFABETO
    INSTRUCTIONS
```

Aplicando a primeira instrução, a matriz ficaria assim:

```ruby
    [['G', 7, 6, 15],
     ['A', 20, 3, 5]]
```

Repare que `G` e `6` permaneceram com suas posições inalteradas, já que somente
as valores ímpares devem ser modificados.

Em seguida, aplicando a segunda instrução, a matriz ficaria assim:

```ruby
    [['A', 7, 6, 15],
     ['G', 20, 3, 5]]
```

## Informações adicionais

- Assuma que seu código receberá apenas instruções válidas;
- Note que a lista de instruções pode conter diversas instruções, uma seguida da outra, e você deve **realizá-las em ordem**.
