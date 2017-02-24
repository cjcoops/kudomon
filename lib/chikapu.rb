require_relative 'kudomon'

class Chikapu < Kudomon

  def type
    :electric
  end

  def initial_health_points
    35
  end

  # def deduct(damage)
  #   @health_points -= damage
  # end

end
