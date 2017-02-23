require_relative 'kudomon_generator'

class Kudomon

  include KudomonGenerator

  attr_reader :type, :position

  def initialize(position)
    @position = position
  end

end
