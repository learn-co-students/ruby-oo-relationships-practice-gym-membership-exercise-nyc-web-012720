#Memebership able to accp lifet, gym argument)
# **should always test method (class or instance) after write them!
class Membership
  attr_accessor :cost, :gym, :lifter
  @@all = []

  def initialize(cost, gym, lifter)
    @cost = cost
    @gym = gym
    @lifter = lifter
    @@all << self
  end

  def self.all 
    @@all 
  end
end
