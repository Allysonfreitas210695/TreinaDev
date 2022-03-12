class ArrayUtils
  def self.multiplos(qtd, multiplo)
    array = []

    qtd.times do |i|
      array << ((i + 1) * multiplo)
    end

    array
  end

  def self.tabuada(num)
    array = []

    num.times do |i|
      array_aux = []
      10.times do |ii|
        array_aux << (i + 1) * (ii + 1)
      end
      array << array_aux
    end

    array
  end
end
