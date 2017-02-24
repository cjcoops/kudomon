#knows the specific features of Squirtle species

require_relative 'kudomon'

class Squirtle < Kudomon

  def type
    :water
  end

  private

  def initial_health_points
    44
  end
end
