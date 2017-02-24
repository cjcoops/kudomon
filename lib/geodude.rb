require_relative 'kudomon'

class Geodude < Kudomon

  def type
    :rock
  end

  def health_points
    @health_points || 40
  end

end
