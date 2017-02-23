require 'game'

describe Game do

  let(:trainer) { double :trainer }
  let(:trainer_class) { double :trainer_class, new: trainer }
  subject(:game) { described_class.new(trainer_class: trainer_class)}

  it "is initialized with a grid dimensions" do
    game = Game.new(trainer_class: trainer_class, grid: [20,30])
    expect(game.grid).to eq([20,30])
  end

  it "has a default grid size of 10 x 10" do
    expect(subject.grid).to eq([10,10])
  end

  it "is initialized with a trainer" do
    expect(subject.trainer).to eq(trainer)
  end

end
