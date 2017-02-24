#knows the specific features of Abra species

require_relative 'kudomon'

class Abra < Kudomon

  def type
    :psychic
  end

  private

  def initial_health_points
    44
  end
end
