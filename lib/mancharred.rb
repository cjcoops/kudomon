class Mancharred

  include Kudomon

  attr_reader :position, :type

  def initialize(position)
    @position = position
    @type = :fire
  end

end
