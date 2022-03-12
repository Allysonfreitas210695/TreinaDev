class Word
  def vowels_count(phrase)
    cont = 0
    phrase.each_char do |letter|
      if [
         'a', 'e', 'i', 'o', 'u', 'y',
         'á', 'é', 'í', 'ó', 'ú', 'ã',
         'ê', 'ô', 'â'
       ].include? letter.downcase
        cont+=1
      end
    end
   cont
  end

  def consonants_count(phrase)
    cont = 0
    phrase.each_char do |letter|
      if [
         'b', 'c', 'd', 'f', 'g', 'h',
         'j', 'k', 'l', 'm', 'n', 'p',
         'q', 'r', 's', 't', 'v',' w', 'x',
         'y', 'z'
       ].include? letter.downcase
        cont+=1
      end
    end
   cont
  end
end
