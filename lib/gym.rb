class Gym
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  # Get a list of all gyms
  def self.all 
    @@all 
  end 

  # Get a list of all memberships at a specific gym
  def memberships 
    Membership.all.select do |membership|
      membership.gym == self
    end 
  end 

  # Get a list of all the lifters that have a membership to a specific gym
  def lifters 
    self.memberships.map do |membership|
      membership.lifter
    end
  end 

  # Get a list of the names of all lifters that have a membership to that gym
  def names 
    self.lifters.map do |lifter|
      lifter.name 
    end 
  end 

  # Get the combined lift total of every lifter has a membership to that gym
  def combined_lift_total 
  total = self.lifters.map do |lifter|
    lifter.lift_total
    end.sum
  end

end
