#knows the specific features of Abra species

require_relative 'kudomon'

class Geodude < Kudomon

  def type
    :rock
  end

  private

  def initial_health_points
    40
  end
end
