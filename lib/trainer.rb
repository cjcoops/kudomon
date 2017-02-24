#knows the actions that a trainer can perform

class Trainer

  attr_accessor :position, :collection

  def initialize(position = [1,1])
    @position = position
    @collection = []
  end

  def move(position)
    self.position = position
  end

  def catch(kudomon)
    raise("Kudomon is too far away!") if !is_nearby?(kudomon)
    raise("Kudomon already been caught!") if in_collection?(kudomon)
    collection.push(kudomon)
  end

  def find_nearby(kudomons)
    kudomons.select {|kudomon| is_nearby?(kudomon) && !in_collection?(kudomon)}
  end

  private

  def is_nearby?(kudomon)
    x_distance = position[0] - kudomon.position[0]
    y_distance = position[1] - kudomon.position[1]
    x_distance.abs < 2 && y_distance.abs < 2
  end

  def in_collection?(kudomon)
    collection.include?(kudomon)
  end
end
