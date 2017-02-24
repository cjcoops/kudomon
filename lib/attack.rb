class Attack

  EFFECTIVENESS_RULES = {
    :water => [:fire],
    :fire => [:grass],
    :grass => [:rock],
    :rock => [:electric],
    :electric => [:water],
    :psychic => [:water, :fire, :grass, :rock, :electric]
  }

  DEFAULT_MULTIPLIER = 2

  attr_reader :attacker, :receiver

  def initialize(attacker, receiver)
    @attacker = attacker
    @receiver = receiver
    run
  end

  private

  def run
    receiver.deduct(points)
  end

  def points
    attacker.combat_points * multiplier
  end

  def multiplier
    is_more_effective? ? DEFAULT_MULTIPLIER : 1
  end

  def is_more_effective?
    EFFECTIVENESS_RULES[attacker.type].include?(receiver.type)
  end

end
