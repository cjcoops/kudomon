require_relative 'kudomon'

class Chikapu < Kudomon

  def type
    :electric
  end

  def health_points
    @health_points || 35
  end

  def combat_points
    55
  end

end
