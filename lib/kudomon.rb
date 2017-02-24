class Kudomon

  attr_reader :type, :position, :health_points

  def initialize(position)
    @position = position
    @health_points = initial_health_points
  end

  def combat_points
    10
  end

  def initial_health_points
  end

end
