class Arrays
  def self.converte_impares_por(lista, numero)
    array_impares = lista.select { |l| l if l.odd?  }
    [[], []] if array_impares.empty? || lista.size == 0
    mult = array_impares.map { |l| l * numero }

    [array_impares, mult]
  end

  def self.converte_pares_por(lista, numero)
    array_pares = lista.select { |l| l if l.even?  }
    [[], []] if array_pares.empty? || lista.size == 0
    mult = array_pares.map { |l| l * numero }

    [array_pares, mult]
  end
end
