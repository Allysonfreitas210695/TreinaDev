class ArrayUtils
  def self.compara(lista1, lista2)
    lista1.sort == lista2.sort
  end

  def self.divisiveis(divisor1, divisor2)
    array_divisores = []
    array_mul1 = []
    array_mul2 = []
    cont = 0

    while cont <= 50
      if cont != 0
        array_divisores << cont if cont % divisor1 == 0 && cont % divisor2 == 0
        if cont > divisor1 || cont >> divisor2
          array_mul1 << cont  if cont % divisor1 == 0 && cont % divisor2 != 0
          array_mul2 << cont if cont % divisor2 == 0 && cont % divisor1 != 0
        else
          array_mul1 << cont  if divisor1 % cont == 0 && divisor2 % cont != 0
          array_mul1 << cont  if divisor2 % cont == 0 && divisor1 % cont != 0
        end
      end
      cont = cont + 1
    end

    [array_divisores, array_mul1, array_mul2]
  end

  def self.soma(list)
    list.sum
  end

  def self.combinar(lista1, lista2)
    lista1.product(lista2)
  end
end
