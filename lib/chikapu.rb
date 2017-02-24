#knows the specific features of Chikapu species

require_relative 'kudomon'

class Chikapu < Kudomon

  def type
    :electric
  end

  private

  def initial_health_points
    35
  end
end
