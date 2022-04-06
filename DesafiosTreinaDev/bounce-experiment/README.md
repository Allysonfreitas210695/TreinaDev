# Experimentando com elasticidade

Para um trabalho de física do colégio, Gabriel e seu colega de classe André devem fazer o seguinte experimento:

- De uma altura inicial `initial_height`, Gabriel deve soltar um determinado número de bolas, uma em seguida da outra. Ao bater no chão, a bola irá "quicar" de volta para cima e atingirá uma altura determinada por um fator de elasticidade, particular de cada bola. André, que está fazendo o trabalho de observador, estará numa certa altura `observer_height`. Ele deve anotar quantas vezes as bolas passam diante de seus olhos durante o experimento.

Para auxiliar André e Gabriel, você deve criar o método `bounce` que, ao receber a altura inicial `initial_height`, a altura do observador `observer_height` e uma lista com o fator de elasticidade das bolas que serão lançadas `bounce_factors`, deve retornar o número total de vezes em que o observador vê as bolas passarem diante de seus olhos durante o experimento.

## Informações adicionais

- Assuma que a altura que uma bola atinge após "quicar" no chão é determinada pela altura inicial da queda multiplicada pelo fator de elasticidade da bola (ou seja, desprezaremos a resistência do ar e outras forças dissipativas).
- Gabriel e André nem sempre são 100% precisos ao passar os dados necessários. Por vezes, acabam passando valores absurdos para o fator de elasticidade de uma ou mais bolas. Um fator de elasticidade válido é, sempre, maior ou igual a 0 e menor do que 1. Qualquer valor que fuja desse intervalo não pode ser considerado pelo seu código.
