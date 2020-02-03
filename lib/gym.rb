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
  	return Membership.all.select {|e| e.gym == self}
  end

  def lifters
  	return self.memberships.map {|e| e.lifter}
  end

  def lifters_name
  	return self.memberships.map {|e| e.lifter.name}
  end

  def combined_lift
  	result = 0
  	self.lifters.each {|e| result += e.lift_total}
  	return result
  end

end
