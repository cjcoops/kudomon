class Attack

  attr_reader :attacker, :receiver

  def initialize(attacker, receiver)
    @attacker = attacker
    @receiver = receiver
    run
  end

  def run
    receiver.deduct(attacker.combat_points)
  end


end
