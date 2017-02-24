class Attack

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
    if attacker.type == :water && receiver.type == :fire
      attacker.combat_points * 2
    else
      attacker.combat_points
    end
  end


end
