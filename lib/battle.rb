#responsible for handling the flow of a battle

require_relative 'attack'

class Battle

  attr_reader :kudomon_1, :kudomon_2, :attack_class
  attr_writer :turn

  def initialize(kudomon_1, kudomon_2, attack_class = Attack)
    @kudomon_1 = kudomon_1
    @kudomon_2 = kudomon_2
    @attack_class = attack_class
  end

  def attack
    attack_class.new(turn, opponent)
    return winner if over?
    switch_turns
  end

  def turn
    @turn || set_initial_turn
  end

  def winner
    return if !over?
    kudomon_1.knocked_out? ? kudomon_2 : kudomon_1
  end

  private

  def over?
    kudomon_1.knocked_out? || kudomon_2.knocked_out?
  end

  def set_initial_turn
    [kudomon_1, kudomon_2][Kernel.rand(0..1)]
  end

  def opponent
    turn == kudomon_1 ? kudomon_2 : kudomon_1
  end

  def switch_turns
    self.turn = opponent
  end
end
