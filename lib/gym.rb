require 'pry'

class Gym
  attr_reader :name

  @@all = []
  
  def initialize(name)
    @name = name 
    
    @@all << self
  end

  def memberships_at_gym #array of membership objects for gym
    Membership.all.select { |mem|
    mem.gym == self }
  end

  def lifters_at_gym #array of lifter objects for gym
    memberships_at_gym.map {|mem| mem.lifter}
  end

  def member_names #array of string of names for gym
    lifters_at_gym.map {|mem| mem.name}
  end

  def lift_total #maps the lifter_at_gym method, returns the sum of lift_total for lift
    self.lifters_at_gym.map {|lifter| lifter.lift_total}.sum
  end

  def self.all
    @@all
  end

end
