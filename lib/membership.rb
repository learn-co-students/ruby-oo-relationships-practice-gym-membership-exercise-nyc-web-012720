class Membership
  attr_accessor :cost

  def initialize(cost, gym, Lifter)
    @cost = cost
    @gym = gym
    @Lifter = Lifter

    @@all << self
  end

  def self.all
    @@all
  end

end


# Get a list of all memberships
