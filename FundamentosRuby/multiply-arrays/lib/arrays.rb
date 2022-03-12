class Arrays
  def self.multiplica_antecessor_predecessor(array)
    array_result = []
    if array.length == 2
      array_result << array[0]*array[1]
      array_result <<  array[0]*array[1]
    elsif array.length > 2
      index = 0

      while index < array.length
        if index == 0
          array_result.push(array[index] * array[1])
          array_result.push(array[index] * array[2])
        elsif index != 0 && index != array.length - 1
          index_pula = index + 2
          if !array[index_pula].nil?
            result = array[index] * array[index_pula]
            array_result.push(result)
          end
        else
          index_anterio = index - 1
          result = array[index] * array[index_anterio]
          array_result.push(result)
        end
        index += 1
      end
    end

    array_result
  end
end
