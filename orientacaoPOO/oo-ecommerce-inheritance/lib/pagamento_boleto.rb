class PagamentoBoleto < Pagamento
  attr_accessor :quantidade

  def initialize(quantidade: 0, produto: Produto.new)
    @quantidade = quantidade
    @produto = produto
  end
end
