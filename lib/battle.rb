class Battle

  attr_reader :kudomon_1, :kudomon_2

  def initialize(kudomon_1, kudomon_2)
    @kudomon_1 = kudomon_1
    @kudomon_2 = kudomon_2
  end

  def turn
    @turn || set_initial_turn
  end

  private

  def set_initial_turn
    [@kudomon_1, @kudomon_2][Kernel.rand(0..1)]
  end

end
