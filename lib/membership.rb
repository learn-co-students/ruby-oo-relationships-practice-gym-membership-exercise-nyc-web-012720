class Membership #joining class
  attr_reader :cost, :lifter, :membership, :gym
  @@all = []

  def initialize(lifter, gym, cost)
    @lifter = lifter
    @gym = gym
    @cost = cost
    @@all << self
  end

  def self.all #individual gyms or lifters do not need to keep track of ALL other gyms or lifters
    @@all
  end

end
