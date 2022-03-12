class Chars
  def unique_quantity(text)
     text.split.map{|sequence| sequence.chars.uniq.count}.sum
  end
end
