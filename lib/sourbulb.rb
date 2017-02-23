require_relative 'kudomon'

class Sourbulb

  include Kudomon

  attr_reader :position, :type

  def initialize(position)
    @position = position
    @type = :grass
  end

end
