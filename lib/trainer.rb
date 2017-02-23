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
    x_distance = position[0] - kudomon.position[0]
    y_distance = position[1] - kudomon.position[1]
    x_distance.abs < 2 && y_distance.abs < 2
  end

end
