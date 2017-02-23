class Sourbulb

  attr_reader :position, :type

  def initialize(position: position)
    @position = position
    @type = :grass
  end

end
