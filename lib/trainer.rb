class Trainer

  attr_accessor :position

  def initialize(position)
    @position = position
  end

  def move(position)
    self.position = position
  end
  
end
