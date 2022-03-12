class StringUtils
  def wavefy(string)
    string.size.times do |i|
      string[i] = string[i].downcase if i % 2 == 0
      string[i] = string[i].upcase if i % 2 != 0
    end
    string
  end
end
