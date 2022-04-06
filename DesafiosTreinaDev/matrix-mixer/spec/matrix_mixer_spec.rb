require 'spec_helper'

describe 'MatrixMixer' do
  it '1: Recebe instruções e matriz de caracteres, e retorna matriz modificada' do
    matrix = [['A', 7, 2, 'P', 3, 5, 'F', 40, 1, 'C']]
    instructions = 'LINHA 0:ÍMPARES'

    expect(MatrixMixer.new.sorter(matrix, instructions)).to eq([['A', 1, 2, 'P', 3, 5, 'F', 40, 7, 'C']])
  end

  it '2: Recebe instruções e matriz de caracteres, e retorna matriz modificada' do
    matrix = [['A', 7, 2, 'P', 3, 5, 'F', 40, 1, 'C'],
              [13, 4, 21, 'B', 3, 'A', 2, 1, 5, 'P']]
    instructions = <<~INSTRUCTIONS
      LINHA 0:ÍMPARES
      LINHA 1:ÍMPARES
      LINHA 1:ALFABETO
    INSTRUCTIONS

    expect(MatrixMixer.new.sorter(matrix, instructions)).to eq([['A', 1, 2, 'P', 3, 5, 'F', 40, 7, 'C'],
                                                               [1, 4, 3, 'A', 5, 'B', 2, 13, 21, 'P']])
  end

  it '3: Recebe instruções e matriz de caracteres, e retorna matriz modificada' do
    matrix = [['Z', 7, 2, 'P', 'A', 5, 'F', 'E', 1, 'C'],
              [13, 4, 8, 'B', 12, 'A', 2, 1, 4, 'P']]
    instructions = <<~INSTRUCTIONS
      LINHA 0:ALFABETO
      LINHA 1:PARES
    INSTRUCTIONS

    expect(MatrixMixer.new.sorter(matrix, instructions)).to eq([['A', 7, 2, 'C', 'E', 5, 'F', 'P', 1, 'Z'],
                                                               [13, 2, 4, 'B', 4, 'A', 8, 1, 12, 'P']])
  end

  it '4: Recebe instruções e matriz de caracteres, e retorna matriz modificada' do
    matrix = [['A'], [32], [9], [18], [40], ['S'], ['P'], [2], [13], [4]]
    instructions = <<~INSTRUCTIONS
      COLUNA 0:PARES
      COLUNA 0:ÍMPARES
    INSTRUCTIONS

    expect(MatrixMixer.new.sorter(matrix, instructions)).to eq([['A'],[2],[9],[4],[18],['S'],['P'],[32],[13],[40]])
  end

  it '5: Recebe instruções e matriz de caracteres, e retorna matriz modificada' do
    matrix = [['A',5,2,'S','J'],
              [32, 1, 'P', 'A', 4],
              [9, 3, 7, 2, 0],
              [18, 23, 4, 2, 1],
              [40, 'A', 'J', 'C', 5],
              ['S', 'B', 'D', 'K', 2],
              ['P', 11, 5, 4, 'C'],
              [2, 'E', 'G', 'I', 'J'],
              [13, 31, 40, 'N', 'T'],
              [4, 17, 'X', 15, 9]]
    instructions = <<~INSTRUCTIONS
      COLUNA 0:PARES
      COLUNA 3:ÍMPARES
      COLUNA 4:ALFABETO
      COLUNA 1:ÍMPARES
    INSTRUCTIONS

    expect(MatrixMixer.new.sorter(matrix, instructions)).to eq([['A', 1, 2, 'S', 'C'],
                                                               [2, 3, 'P', 'A', 4],
                                                               [9, 5, 7, 2, 0],
                                                               [4, 11, 4, 2, 1],
                                                               [18, 'A', 'J', 'C', 5],
                                                               ['S', 'B', 'D', 'K', 2],
                                                               ['P', 17, 5, 4, 'J'],
                                                               [32, 'E', 'G', 'I', 'J'],
                                                               [13, 23, 40, 'N', 'T'],
                                                               [40, 31, 'X', 15, 9]])
  end

  it '6: Recebe instruções e matriz de caracteres, e retorna matriz modificada' do
    matrix = [['Z', 7, 2, 'P', 'A', 5, 'F', 'E', 1, 'C'],
              [13, 4, 8, 'B', 12, 'A', 2, 1, 4, 'P'],
              [7, 'B', 2, 'A', 'C', 3, 'G', 'O', 3, 'Q']]
    instructions = <<~INSTRUCTIONS
      LINHA 0:ALFABETO
      LINHA 1:PARES
      COLUNA 3:ALFABETO
      COLUNA 2:PARES
      COLUNA 9:ALFABETO
    INSTRUCTIONS

    expect(MatrixMixer.new.sorter(matrix, instructions)).to eq([['A', 7, 2, 'A', 'E', 5, 'F', 'P', 1, 'P'],
                                                               [13, 2, 2, 'B', 4, 'A', 8, 1, 12, 'Q'],
                                                               [7, 'B', 4, 'C', 'C', 3, 'G', 'O', 3, 'Z']])
  end

 
end
