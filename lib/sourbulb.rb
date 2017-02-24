require_relative 'kudomon'

class Sourbulb < Kudomon

  def type
    :grass
  end

  def health_points
    @health_points || 45
  end

end
