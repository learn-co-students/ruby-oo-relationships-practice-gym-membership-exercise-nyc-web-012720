class Membership
  attr_reader :cost, :gym, :lifter

  @@all = [] 

  def initialize(cost, lifter = nil, gym = nil)
    @cost = cost
    @lifter = lifter
    @gym = gym
    @@all << self
  end

  def self.all
  	return @@all
  end

end
