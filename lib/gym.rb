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
    Membership.all.select{|membership| membership.gym == self}
  end

  def lifters
    self.memberships.map{|membership| membership.lifter}
  end

  def lifter_names
    self.lifters.map{|lifter| lifter.name}
  end

  def total_lift_total
    self.lifters.reduce(0){|total_lifted, lifter|
      total_lifted + lifter.lift_total
    }
  end
end
