class MatrixMixer
  def vetor_aux_ordenado_lines(vetor, impares_or_pares_columna)
    array = []
    if impares_or_pares_columna.eql?(":ÍMPARES")
      vetor.each do |val|
        array << val  if val % 2 != 0 && val.class == Integer
      end
    elsif impares_or_pares_columna.eql?(":PARES")
      vetor.each do |val|
        array << val if val % 2 == 0 && val.class == Integer
      end
    elsif impares_or_pares_columna.eql?(":ALFABETO")
      vetor.each do |val|
        array << val if val.class == String
      end
    end
    return array.sort { |a, b| a <=> b }
  end

  def vetores_ordered_lines(vetor, impares_or_pares_columna)
    array_aux = vetor_aux_ordenado_lines(vetor, impares_or_pares_columna)
    if impares_or_pares_columna.eql?(":ÍMPARES")
      vetor.each_index do |index|
        if vetor[index].class == Integer && vetor[index].odd?
         v = array_aux.shift
         vetor[index] = v
        end
      end
    elsif impares_or_pares_columna.eql?(":PARES")
      vetor.each_index do |index|
        if vetor[index].class == Integer && vetor[index].even?
          v = array_aux.shift
          vetor[index] = v
        end
      end
    elsif impares_or_pares_columna.eql?(":ALFABETO")
      vetor.each_index do |index|
        if vetor[index].class == String
          v = array_aux.shift
          vetor[index] = v
        end
      end
    end
  end

  def vetor_aux_ordenado_colum(vetor, column, impares_or_pares_columna)
    array = []
    if impares_or_pares_columna.eql?(":ÍMPARES")
      vetor.each_index do |index|
        array << vetor[index][column]  if vetor[index][column].class == Integer && vetor[index][column].odd?
      end
    elsif impares_or_pares_columna.eql?(":PARES")
      vetor.each_index do |index|
        array << vetor[index][column]  if vetor[index][column].class == Integer && vetor[index][column].even?
      end
    elsif impares_or_pares_columna.eql?(":ALFABETO")
      vetor.each_index do |index|
        array << vetor[index][column]  if vetor[index][column].class == String
      end
    end
    return array.sort { |a, b| a <=> b }
  end

  def vetores_ordered_columns(vetor, column, impares_or_pares_columna)
    array_aux = vetor_aux_ordenado_colum(vetor, column, impares_or_pares_columna)
    if impares_or_pares_columna.eql?(":ÍMPARES")
      vetor.each_index do |index|
        if vetor[index][column].class == Integer && vetor[index][column].odd?
          v =  array_aux.shift
          vetor[index][column] = v
        end
      end
      return vetor
    elsif impares_or_pares_columna.eql?(":PARES")
      vetor.each_index do |index|
        if vetor[index][column].class == Integer && vetor[index][column].even?
          v =  array_aux.shift
          vetor[index][column] = v
        end
      end
      return vetor
    elsif impares_or_pares_columna.eql?(":ALFABETO")
      vetor.each_index do |index|
        if vetor[index][column].class == String
          v =  array_aux.shift
          vetor[index][column] = v
        end
      end
      return vetor
    end
  end

  def sorter(matrix, instructions)
    instructions.split("\n").each do |line|
      if line.include?("LINHA")
        10.times do |i|
          if line.include?(":ÍMPARES") && line.include?("#{i}")
            matrix[i] = vetores_ordered_lines(matrix[i],":ÍMPARES")
          elsif line.include?(":PARES") && line.include?("#{i}")
            matrix[i] = vetores_ordered_lines(matrix[i],":PARES")
          elsif line.include?(":ALFABETO") && line.include?("#{i}")
            matrix[i] = vetores_ordered_lines(matrix[i],":ALFABETO")
          end
        end
      elsif line.include?("COLUNA")
        10.times do |i|
          if line.include?(":ÍMPARES") && line.include?("#{i}")
            matrix = vetores_ordered_columns(matrix, i, ":ÍMPARES")
          elsif line.include?(":PARES") && line.include?("#{i}") 
            matrix = vetores_ordered_columns(matrix, i, ":PARES")
          elsif line.include?(":ALFABETO") && line.include?("#{i}")
            matrix = vetores_ordered_columns(matrix, i, ":ALFABETO")
          end
        end
      end
    end
    matrix
  end
end
