class Trainer

  attr_accessor :position, :collection

  def initialize(position: [1,1])
    @position = position
    @collection = []
  end

  def move(position)
    self.position = position
  end

  def catch(kudomon)
    collection.push(kudomon)
  end

  def is_nearby?(kudomon)
    (position[0] - kudomon.position[0]).abs < 2 && (position[1] - kudomon.position[1]).abs < 2
  end

end
