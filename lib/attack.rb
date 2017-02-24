class Attack

  MULTIPLIER_RULES = {
    :water => :fire,
    :fire => :grass,
    :grass => :rock,
    :rock => :electric,
    :electric => :water
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
    if MULTIPLIER_RULES[attacker.type] == receiver.type
      attacker.combat_points * 2
    else
      attacker.combat_points
    end
  end


end
