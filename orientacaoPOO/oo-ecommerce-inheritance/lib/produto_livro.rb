class ProdutoLivro < Produto
  attr_accessor :nome, :preco, :estoque, :autor, :genero, :paginas

  def initialize(nome: 'Medo Clássico', preco: 47, estoque: 4, autor: 'H.P. Lovecraft', genero: 'Horror Cósmico', paginas: 500)
    super(nome: nome, preco: preco, estoque: estoque)
    @autor = autor
    @genero = genero
    @paginas = paginas
  end

  def adiciona_estoque(quantidade)
    @estoque += quantidade
  end

  def remove_estoque(quantidade)
    @estoque -= quantidade
  end
end
