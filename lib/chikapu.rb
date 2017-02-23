require_relative 'kudomon'

class Chikapu

  include Kudomon

  attr_reader :position, :type

  def initialize(position)
    @position = position
    @type = :electric
  end

end
