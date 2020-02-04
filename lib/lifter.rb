class Lifter
  attr_reader :name, :lift_total
  @@all = []
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

# Get a list of all lifters
def self.all 
  @@all
end 

# Get a list of all the memberships that a specific lifter has
def memberships 
  Membership.all.select do |membership|
    membership.lifter == self
  end 
end 

# Get a list of all the gyms that a specific lifter has memberships to
def gyms 
  self.memberships.map do |membership|
    membership.gym
  end
end 

# Get the average lift total of all lifters
def self.average
  av = @@all.map do |lifter|
    lifter.lift_total
  end.sum 
  av.to_f / @@all.length
end 

# Get the total cost of a specific lifter's gym memberships
def total_cost 
  self.memberships.map do |membership|
    membership.cost 
  end.sum
end 

# Given a gym and a membership cost, sign a specific lifter up for a new gym
def singup (gym, cost)
  new_memebership = Membership.new(cost , self, gym)
  end 

end
