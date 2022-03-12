class Numbers
  def sum_text(numbers_text)
    array = numbers_text.split("\n").map { |e| e.to_i }
    array.sum
  end
end
