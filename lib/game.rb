require_relative 'trainer'

class Game

  attr_reader :trainer_class, :trainers, :kudomons

  def initialize(trainer_class: Trainer)
    @trainer_class = trainer_class.new
    @trainers = []
    @kudomons = []
  end

  def spawn_kudomon(kudomon)
    kudomons.push(kudomon)
  end

end
