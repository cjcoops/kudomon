require_relative 'kudomon'

class Abra < Kudomon

  def type
    :psychic
  end

  def health_points
    @health_points || 44
  end

end
