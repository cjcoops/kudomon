class Trainer

  attr_accessor :position, :collection

  def initialize(position: [0,0])
    @position = position
    @collection = []
  end

  def move(position)
    self.position = position
  end

end
