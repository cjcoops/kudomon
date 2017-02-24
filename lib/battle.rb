class Battle

  attr_reader :kudomon_1, :kudomon_2, :attack_class

  def initialize(kudomon_1, kudomon_2, attack_class)
    @kudomon_1 = kudomon_1
    @kudomon_2 = kudomon_2
    @attack_class = attack_class
  end

  def turn
    @turn || set_initial_turn
  end

  def attack
    attack_class.new(opponent)
    return winner if over?
  end

  def over?
    kudomon_1.knocked_out? || kudomon_2.knocked_out?
  end

  def winner
    return if !over?
    kudomon_1.knocked_out? ? kudomon_2 : kudomon_1
  end

  private

  def set_initial_turn
    [kudomon_1, kudomon_2][Kernel.rand(0..1)]
  end

  def opponent
    turn == kudomon_1 ? kudomon_2 : kudomon_1
  end

end
