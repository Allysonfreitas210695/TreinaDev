require 'spec_helper'

describe 'WarCode' do
  context '#encode' do
    it '1: Recebe letra e fator de rotação, e deve retornar a letra codificada' do
      message = 'i'
      factor = 2
      encoded_message = 'k'

      expect(WarCode.new.encode(message, factor)).to eq(encoded_message)
    end

    it '2: Recebe palavra e fator de rotação, e deve retornar a palavra codificada' do
      message = 'ataque'
      factor = 5
      encoded_message = 'fyfvzj'

      expect(WarCode.new.encode(message, factor)).to eq(encoded_message)
    end

    it '3: Recebe frase e fator de rotação, e deve retornar a frase codificada' do
      message = 'os inimigos atacaram uma cidade no sul'
      factor = 3
      encoded_message = 'rv lqlpljrv dwdfdudp xpd flgdgh qr vxo'

      expect(WarCode.new.encode(message, factor)).to eq(encoded_message)
    end

    it '4: Recebe frase e fator de rotação, e deve retornar a frase codificada' do
      message = 'Os aliados atacaram, mas a cidade vizinha contra-atacou!'
      factor = 7
      encoded_message = 'Vz hsphkvz hahjhyht, thz h jpkhkl cpgpuoh jvuayh-hahjvb!'

      expect(WarCode.new.encode(message, factor)).to eq(encoded_message)
    end
  end

  context '#decoder' do
    it '5: Recebe letra e fator de rotação, e deve retornar a letra decodificada' do
      message = 'u'
      factor = 10
      decoded_message = 'k'

      expect(WarCode.new.decode(message, factor)).to eq(decoded_message)
    end

    it '6: Recebe palavra e fator de rotação, e deve retornar a palavra decodificada' do
      message = 'wjhzfw'
      factor = 5
      decoded_message = 'recuar'

      expect(WarCode.new.decode(message, factor)).to eq(decoded_message)
    end

    it '7: Recebe frase e fator de rotação, e deve retornar a frase decodificada' do
      message = 'uy grogjuy yk jkyruigxgs vgxg u tuxzk'
      factor = 6
      decoded_message = 'os aliados se deslocaram para o norte'

      expect(WarCode.new.decode(message, factor)).to eq(decoded_message)
    end

    it '8: Recebe frase e fator de rotação, e deve retornar a frase decodificada' do
      message = 'Zd tytxtrzd cpnflclx op Vlcwdcfsp, xld lelnlclx l ntolop gtktysl!'
      factor = 11
      decoded_message = 'Os inimigos recuaram de Karlsruhe, mas atacaram a cidade vizinha!'

      expect(WarCode.new.decode(message, factor)).to eq(decoded_message)
    end
  end
end
