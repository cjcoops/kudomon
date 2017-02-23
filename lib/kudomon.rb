module Kudomon

  attr_reader :position

  def self.new(species, position)
    species.new(position)
  end

end
