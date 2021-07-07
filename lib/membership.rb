class Membership
  
  attr_reader :cost, :gym, :lifter

  @@memberships = []

  def initialize(cost, gym, lifter)
    @cost = cost
    @gym = gym
    @lifter = lifter
    @@memberships << self
  end

  def self.all
    @@memberships
  end
end
