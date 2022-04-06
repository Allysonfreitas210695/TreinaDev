class WarCode
  ALFABETO = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]

  def encode(string, factor)
    cont = 0
    string.each_char do |letter|
      if ALFABETO.include? letter
        tam = ALFABETO.index(letter) + factor
        if tam < ALFABETO.size
          string[cont] = ALFABETO[tam]
        else
          inicio = (ALFABETO.index(letter) + factor) - 26
          string[cont] = ALFABETO[inicio]
        end
      else 
        if ALFABETO.include? letter.downcase
          indexResp = ALFABETO.index(letter.downcase)
          letter_transform = ALFABETO[(ALFABETO.index(letter.downcase)+factor)].upcase
          string[cont] = letter_transform
        end
      end
      cont = cont + 1 
    end

    return string
  end

  def decode(string, factor)
    cont = 0
    string.each_char do |letter|
      if ALFABETO.include? letter
        tam = ALFABETO.index(letter) - factor
        if tam < ALFABETO.size
          string[cont] = ALFABETO[tam]
        else
          inicio = (ALFABETO.index(letter) - factor) - 26
          string[cont] = ALFABETO[inicio]
        end
      else 
        if ALFABETO.include? letter.downcase
          indexResp = ALFABETO.index(letter.downcase)
          letter_transform = ALFABETO[(ALFABETO.index(letter.downcase)-factor)].upcase
          string[cont] = letter_transform
        end
      end
      cont = cont + 1 
    end

    return string
  end
end
