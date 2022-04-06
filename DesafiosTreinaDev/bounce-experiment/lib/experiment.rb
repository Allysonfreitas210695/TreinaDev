class Experiment
  # Assuma que a altura que uma bola atinge após "quicar" no chão é determinada pela altura inicial da queda multiplicada pelo fator de elasticidade da bola (ou seja, desprezaremos a resistência do ar e outras forças dissipativas).

  # Gabriel e André nem sempre são 100% precisos ao passar os dados necessários. Por vezes, acabam passando valores absurdos para o fator de elasticidade de uma ou mais bolas. Um fator de elasticidade válido é, sempre, maior ou igual a 0 e menor do que 1. Qualquer valor que fuja desse intervalo não pode ser considerado pelo seu código.

  def bounce(initial_height, observer_height, bounce_factors)
    soma = 0
    f = initial_height

    bounce_factors.each do |bounce|
      initial_height = f
      if bounce.to_f >= 0 && bounce.to_f < 1
        if initial_height >= observer_height
          soma = soma + 1 
        end

        initial_height = initial_height*bounce.to_f

        while initial_height > observer_height
          soma = soma + 2
          initial_height = initial_height*bounce.to_f
        end
      end
    end
    soma
  end
end
