require 'spec_helper'

describe 'Experiment' do

  it "1: Recebe uma altura inicial, a altura do observador e o fator de ressalto e retorna 0" do
    initial_height = 3
    observer_height = 5
    bounce_factors = ['0.66']

    expect(Experiment.new.bounce(initial_height, observer_height, bounce_factors)).to eq(0)
  end

  it "2: Recebe uma altura inicial, a altura do observador e o fator de ressalto e retorna 1" do
    initial_height = 3
    observer_height = 3
    bounce_factors = ['0.5']

    expect(Experiment.new.bounce(initial_height, observer_height, bounce_factors)).to eq(1)
  end

  it "3: Recebe uma altura inicial, a altura do observador e o fator de ressalto e retorna 6" do
    initial_height = 3.5
    observer_height = 1.6
    bounce_factors = ['0.3', '0.4', '0.5', '0']

    expect(Experiment.new.bounce(initial_height, observer_height, bounce_factors)).to eq(6)
  end

  it "4: Recebe uma altura inicial, a altura do observador e o fator de ressalto e retorna 8" do
    initial_height = 3.5
    observer_height = 1.6
    bounce_factors = ['0','-1','0.8']

    expect(Experiment.new.bounce(initial_height, observer_height, bounce_factors)).to eq(8)
  end

  it "5: Recebe uma altura inicial, a altura do observador e o fator de ressalto e retorna 5" do
    initial_height = 3
    observer_height = 1.5
    bounce_factors = ['0.66','3','0.4','0.3']

    expect(Experiment.new.bounce(initial_height, observer_height, bounce_factors)).to eq(5)
  end


  it "6: Recebe uma altura inicial, a altura do observador e o fator de ressalto e retorna 0" do
    initial_height = 3.5
    observer_height = 4.0
    bounce_factors = ['1.2','0.66','3']

    expect(Experiment.new.bounce(initial_height, observer_height, bounce_factors)).to eq(0)
  end

  it "7: Recebe uma altura inicial, a altura do observador e o fator de ressalto e retorna 35" do
    initial_height = 3.5
    observer_height = 3
    bounce_factors = ['0.99','0.1','0.4','0.8','0.5']

    expect(Experiment.new.bounce(initial_height, observer_height, bounce_factors)).to eq(35)
  end
end
