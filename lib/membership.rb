class Membership
  attr_reader :cost, :gym, :lifter
  attr_reader :cost

  @@all = []

  def initialize(cost, gym, lifter)
  def initialize(cost)
    @cost = cost
    @gym = gym
    @lifter = lifter

    @@all << self
  end

  def self.all
    @@all
  end  
end