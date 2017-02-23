class Game

  attr_reader :grid, :trainer

  def initialize(trainer_class: Trainer, grid: [10,10])
    @grid = grid
    @trainer = trainer_class.new
  end

end
