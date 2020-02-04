class Lifter
  attr_reader :name, :lift_total

  @@lifters = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@lifters << self
  end

  def memberships
    #gets memberships for specific lifter
    Membership.all.select {|membership| membership.lifter == self}
  end

  def gyms
    self.memberships.map {|mem| mem.gym}
  end

  def self.avg_lift_total
    #this is an aggregator method
    #find the sum of all lift totals and divide by total number of lifters
    lift_sum = self.all.reduce(0) {|agg, lifter| agg + lifter.lift_total}
    #lift_sum = @@lifters.map {|lifter| lifter.lift_total}.sum
    lift_sum.to_f / @@lifters.length 
    # Lifter.all == self.all == @@lifters(class variable)
  end

  def total_membership_cost
    self.memberships.map {|mem| mem.cost}.sum
  end

  def sign_up(gym, cost)
    Membership.new(cost, gym, self)
  end

  def self.all
    @@lifters
  end
end
