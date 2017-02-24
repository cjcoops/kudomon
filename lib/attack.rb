class Attack

  MULTIPLIER = {
    :water => :fire,
    :fire => :grass
  }

  attr_reader :attacker, :receiver

  def initialize(attacker, receiver)
    @attacker = attacker
    @receiver = receiver
    run
  end

  def run
    receiver.deduct(points)
  end

  def points
    if MULTIPLIER[attacker.type] == receiver.type
      attacker.combat_points * 2
    else
      attacker.combat_points
    end
  end


end
