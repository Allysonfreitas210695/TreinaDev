class Produto
  attr_accessor :nome, :categoria, :preco, :estoque
  def initialize(nome: 'carne', categoria: 'Geral', preco: 25.00, estoque: 100)
    @nome = nome
    @categoria = categoria
    @preco = preco
    @estoque = estoque
  end
end
