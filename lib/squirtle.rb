require_relative 'kudomon'

class Squirtle < Kudomon

  def type
    :water
  end

  def health_points
    @health_points || 44
  end

end
