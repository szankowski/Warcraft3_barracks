# http://classic.battle.net/war3/human/units/footman.shtml
require_relative "unit"
class Footman < Unit
  #attr_reader :health_points, :attack_power

  def initialize
    super(60, 10)
  end
  
  def attack!(enemy)

    if enemy.is_a?(Barracks)
     enemy.damage(@attack_power / 2)
    else
      raise DeadError, "Attacker is dead!" if dead?
      raise DeadError, "Victim is dead!" if enemy.dead?
     enemy.damage(@attack_power)
    end

  end

end