class Lifter
  
  attr_reader :name, :lift_total

  @@lifters = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@lifters << self
  end

  def memberships
    # returns an array of membership objects, specific to this lifter
    Membership.all.select {|x| x.lifter == self}
  end

  def gyms
    # returns an array of gym objects, specific to this lifter
    self.memberships.map {|x| x.gym}
  end

  def self.average_lift_total
    # find the sum of all the lift totals
    # divide sum by total number of lifters
    lift_totals = @@lifters.map {|x| x.lift_total}
    sum = lift_totals.sum.to_f
    sum / lift_totals.length
  end

  def total_cost
    # get this lifter's memberships
    # get the cost of each membership
    # add these costs to a total
    self.memberships.map {|x| x.cost}.sum
  end

  def signup (cost, gym)
    Membership.new(cost, gym, self)
  end

  def self.all
    @@lifters
  end

end
