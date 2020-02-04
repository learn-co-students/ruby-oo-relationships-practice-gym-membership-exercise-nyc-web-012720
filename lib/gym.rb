class Gym

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def memberships
    Membership.all.select {|mem| mem.gym == self}
  end

  def lifters
    #lifter objs specific to that gym
    self.memberships.map { |mem| mem.lifter}
  end

  def lifter_names
    self.lifters.map {|lifter| lifter.name}
  end

  def comb_lift
    self.lifters.map {|lifter| lifter.lift_total}.sum
  end

  def self.all
    @@all
  end

end
