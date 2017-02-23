require 'game'

describe Game do

  it "is initialized with a grid dimensions" do
    game = Game.new(grid: [20,30])
    expect(game.grid).to eq([20,30])
  end

  it "has a default grid size of 10 x 10" do
    game = Game.new()
    expect(game.grid).to eq([10,10])
  end



end
