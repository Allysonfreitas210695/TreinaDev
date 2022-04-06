# Código de guerra

Para evitar que inimigos compreendessem suas comunicações durante a guerra, um
mensageiro codificava as mensagens utilizando uma estratégia em que cada letra
do texto é substituída por outra que se apresenta no alfabeto deslocada um
número fixo de vezes (fator de rotação).

Por exemplo, com um fator de rotação 3, a letra `A` seria substituído por `D`,
`B` se tornaria `E`, e assim por diante. Ao chegar no destino, essas mensagens
deveriam ser decodificadas, seguindo o princípio inverso.

Nesse desafio, você deve implementar o método `encode` para codificar uma
mensagem e o método `decode` para decodificar a mensagem. É importante destacar
que espaços, pontuações, maiúsculas e minúsculas devem ser respeitados.

## Exemplos

A chamada do método `encode` com:

```ruby
message: 'Ataque agora!'
factor: 3
```
deve retornar `Dwdtxh djrud!`.

Por outro lado, a chamada do método `decode` com:

```ruby
message: 'Nsnrnltx jr Qjnuenl'
factor: 5
```
deve retornar `Inimigos em Leipzig`.
