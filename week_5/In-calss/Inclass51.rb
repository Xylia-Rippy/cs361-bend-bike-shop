class Player
  attr_accessor :name, :hp, :str, :dex, :con, :int, :wis, :cha

  def initialize(name)
    @name = name
    @hp = 10
    @str = 9         # stats
    @dex = 12
    @con = 8
    @int = 18
    @wis = 10
    @cha = 2
    @armor = [
      {
        :name => "iron helmet",
        :ac => 8
      },
      {
        :name => "chain mail",
        :ac => 16           # armor class
      }
    ]
    @weapon = [ "short sword", "1d6" ]  # name, damage
  end

  def damage(p)
    @hp -= p
  end

  def compute_damage(base)
    # Pretend this is some complex thing with AC
  end

  # And more functions here to handle stats, weapons, and armor
end

p = Player.new("Alfredo")


class Stats
  attr_accessor :str, :dex, :con, :int, :wis, :cha

  def initialize(str, dex, con, int, wis, cha)
    @str = str
    @dex = dex
    @con = con
    @int = int
    @wis = wis
    @cha = cha
  end
end

class Armor
  attr_accessor :name, :ac

  def initialize(name, ac)
    @name = name
    @ac = ac
  end
end

class Weapon
  attr_accessor :name, :damage

  def initialize(name, damage)
    @name = name
    @damage = damage
  end
end

class Player
  attr_accessor :name, :stats, :armor, :weapon

  def initialize(name)
    @name = name
    @hp = 10
    @stats = Stats.new(9, 12, 8, 18, 10, 2)  # Initialize stats with given values
    @armor = [
      Armor.new("iron helmet", 8),
      Armor.new("chain mail", 16)
    ]
    @weapon = Weapon.new("short sword", "1d6")
  end

  def damage(points)
    @hp -= points
  end
  def compute_damage(base)
    # Placeholder for complex damage calculation based on AC and other factors
  end
end

p = Player.new("Alfredo")
puts p.name
puts p.hp
puts p.stats.int
puts p.armor[0].name
puts p.weapon.damage



