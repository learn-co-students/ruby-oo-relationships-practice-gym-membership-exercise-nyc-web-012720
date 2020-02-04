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
    Membership.all.select do |mem|
      mem.gym == self
    end 
  end 

  def lifters
    self.memberships.map do |mem|
      mem.lifter
    end 
  end 

  def lifter_names
    self.lifters.map do |lifter|
      lifter.name
    end 
  end 

  def lift_totals
    self.lifters.map do |lifter|
      lifter.lift_total
    end.sum
  end 

end
