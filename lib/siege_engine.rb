require_relative 'unit'
class SiegeEngine < Unit
  
  def initialize
    super(400, 50)
  end

    def attack!(enemy)

    if enemy.is_a?(Barracks)
     enemy.damage(@attack_power * 2)
    else
      raise DeadError, "Attacker is dead!" if dead?
      raise DeadError, "Victim is dead!" if enemy.dead?
     enemy.damage(@attack_power)
    end

  end
  
end
