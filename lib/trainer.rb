class Trainer

  attr_accessor :position

  def initialize(position: [0,0])
    @position = position
  end

  def move(position)
    self.position = position
  end

end
