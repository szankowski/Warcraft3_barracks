  # require ""
  class DeadError < StandardError
  end

  class Unit
  attr_reader :health_points, :attack_power
  def initialize(health_points, attack_power)
    @health_points = health_points
    @attack_power = attack_power
    # Need to default the 2 instance variables here
    # Also also give code outside this class access to these variables (via attr_reader, attr_writer or attr_accessor)
  end

  def attack!(enemy)

    case enemy
      when enemy.is_a?(Barracks) then enemy.damage(@attack_power / 2)
      when 
      when condition then 
      else raise DeadError, "Attacker is dead!" if dead? ;
    

    # if enemy.is_a?(Barracks)
    #  enemy.damage(@attack_power / 2)
    # else
    #   raise DeadError, "Attacker is dead!" if dead?
    #   raise DeadError, "Victim is dead!" if enemy.dead?
    #  enemy.damage(@attack_power)
    # end

  end

  def damage(dmg)
    @health_points -= dmg
  end

  def dead?
    @health_points == 0  
  end

end