class Kudomon

  attr_reader :type, :position

  def initialize(position)
    @position = position
  end

  def combat_points
    10
  end

end
