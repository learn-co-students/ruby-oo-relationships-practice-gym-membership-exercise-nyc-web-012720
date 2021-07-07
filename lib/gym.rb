class Gym
  
  attr_reader :name

  @@gyms = []

  def initialize(name)
    @name = name
    @@gyms << self
  end

  def memberships
    Membership.all.select {|x| x.gym == self}
  end

  def lifters
    self.memberships.map {|x| x.lifter}
  end

  def names
    self.lifters.map {|x| x.name}
  end

  def lift_total
    self.lifters.map {|x| x.lift_total}.sum
  end

  def self.all
    @@gyms
  end
end
