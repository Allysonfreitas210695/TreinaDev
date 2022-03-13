class ProdutoCozinha < Produto
  attr_accessor :material, :cor
  def initialize(nome:'Sem nome', preco: 0, estoque: 0, cor: 'Sem cor', material: 'Sem Material')
    super(nome: nome, preco: preco, estoque: estoque)
    @cor = cor
    @material = material
  end
end
