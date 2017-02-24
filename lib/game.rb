require_relative 'trainer'

class Game

  attr_reader :trainer_class, :trainers, :kudomons

  def initialize
    @trainers = []
    @kudomons = []
  end

  def spawn_kudomon(kudomon)
    kudomons.push(kudomon)
  end

  def add_trainer(trainer)
    trainers.push(trainer)
  end

end
