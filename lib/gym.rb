class Gym
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all 
    @@all
  end

  def memberships
    Membership.all.select {|mem|mem.gym == self}
  end

  def lifters
    self.memberships.map {|mem|mem.lifter}.uniq
  end

  def lifters_name 
    self.lifters.map {|lifter|lifter.name}
  end

  def combined_lift_total
    lift_total = self.lifters.map {|lifter|lifter.lift_total}.sum
    lift_total
  end

end
