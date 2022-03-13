class PagamentoCredito < Pagamento
  attr_accessor :quantidade, :juros, :produto

  def initialize(quantidade: 300, juros: 10, produto: Produto.new)
    @produto = produto
    @quantidade = quantidade
    @juros = juros
  end

  def calcular_valor
    produto.remove_estoque(quantidade)
    @valor = @quantidade * produto.preco
  end

  def atualizar_valor
     @valor +=  @valor * @juros/100
  end

  def aplicar_desconto(porcentagem)
    @valor -= @valor * porcentagem/100
  end
end
