#knows the specific features of Sourbulb species

require_relative 'kudomon'

class Sourbulb < Kudomon

  def type
    :grass
  end

  private

  def initial_health_points
    45
  end
end
