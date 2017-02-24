#knows the common features for all kudomon species

class Kudomon

  attr_reader :type, :position
  attr_accessor :health_points

  def initialize(position)
    @position = position
    @health_points = initial_health_points
  end

  def combat_points
    10
  end

  def deduct(damage)
    self.health_points -= damage
  end

  def knocked_out?
    health_points <= 0
  end

  private

  def initial_health_points
  end
end
