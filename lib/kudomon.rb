require_relative 'kudomon_generator'

class Kudomon

  include KudomonGenerator

  attr_reader :position, :type

  def initialize(position)
    @position = position
  end

end
