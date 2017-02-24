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

  def initial_health_points
  end

  def deduct(damage)
    self.health_points -= damage
  end

end
