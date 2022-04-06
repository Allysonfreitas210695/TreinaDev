class MatrixMixer
  def impares(vetor)
    array = []
    vetor.each do |val|
      array << val  if val % 2 != 0 && val.class == Integer
    end
    return array.sort { |a, b| a <=> b }
  end

  def pares(vetor)
    array = []
    vetor.each do |val|
      array << val if val % 2 == 0 && val.class == Integer
    end
    return array.sort { |a, b| a <=> b }
  end
  
  def alfabeto(vetor)
    array = []
    vetor.each do |val|
      array << val if val.class == String
    end
    return array.sort { |a, b| a <=> b }
  end

  def ordem_impares(vetor)
    array_aux = impares(vetor)
    vetor.each_index do |index|
      if vetor[index].class == Integer && vetor[index].odd?
       v = array_aux.shift
       vetor[index] = v
      end
    end
  end

  def ordem_pares(vetor)
    array_aux = pares(vetor)
    vetor.each_index do |index|
      if vetor[index].class == Integer && vetor[index].even?
        v = array_aux.shift
        vetor[index] = v
      end
    end
  end

  def ordem_alfabeto(vetor)
    array_aux = alfabeto(vetor)
    vetor.each_index do |index|
      if vetor[index].class == String
        v = array_aux.shift
        vetor[index] = v
      end
    end
  end

  def ordem_impares_columns(vetor, column)
    array_columns = []
    vetor.each_index do |index|
      array_columns << vetor[index][column]  if vetor[index][column].class == Integer && vetor[index][column].odd?
    end
    return array_columns.sort { |a, b| a <=> b }
  end

  def ordem_colum_impares(vetor, column)
    array_aux = ordem_impares_columns(vetor, column)
    vetor.each_index do |index|
      if vetor[index][column].class == Integer && vetor[index][column].odd?
        v =  array_aux.shift
        vetor[index][column] = v
      end
    end
    vetor
  end

  def ordem_pares_columns(vetor, column)
    array_columns = []
    vetor.each_index do |index|
      array_columns << vetor[index][column]  if vetor[index][column].class == Integer && vetor[index][column].even?
    end
    return array_columns.sort { |a, b| a <=> b }
  end

  def ordem_colum_pares(vetor, column)
    array_aux = ordem_pares_columns(vetor, column)
    vetor.each_index do |index|
      if vetor[index][column].class == Integer && vetor[index][column].even?
        v =  array_aux.shift
        vetor[index][column] = v
      end
    end
    vetor
  end

  def ordem_alfabeto_columns(vetor, column)
    array_columns = []
    vetor.each_index do |index|
      array_columns << vetor[index][column]  if vetor[index][column].class == String
    end
    return array_columns.sort { |a, b| a <=> b }
  end

  def ordem_colum_alfabetos(vetor, column)
    array_aux = ordem_alfabeto_columns(vetor, column)
    vetor.each_index do |index|
      if vetor[index][column].class == String
        v =  array_aux.shift
        vetor[index][column] = v
      end
    end
    vetor
  end

  def sorter(matrix, instructions)
    instructions.split("\n").each do |line|
      if line.include?("LINHA")
        10.times do |i|
          if line.include?(":ÍMPARES") && line.include?("#{i}")
            matrix[i] = ordem_impares(matrix[i])
          elsif line.include?(":PARES") && line.include?("#{i}")
            matrix[i] = ordem_pares(matrix[i])
          elsif line.include?(":ALFABETO") && line.include?("#{i}")
            matrix[i] = ordem_alfabeto(matrix[i])
          end
        end
      elsif line.include?("COLUNA")
        10.times do |i|
          if line.include?(":ÍMPARES") && line.include?("#{i}")
            matrix = ordem_colum_impares(matrix, i)
          elsif line.include?(":PARES") && line.include?("#{i}") 
            matrix = ordem_colum_pares(matrix, i)
          elsif line.include?(":ALFABETO") && line.include?("#{i}")
            matrix = ordem_colum_alfabetos(matrix, i)
          end
        end
      end
    end
    matrix
  end
end
