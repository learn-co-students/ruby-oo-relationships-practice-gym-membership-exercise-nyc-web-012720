class Lifter
  attr_accessor :lift_total
  attr_reader :name
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def sign_up(gym, cost)
    Membership.new(self, gym, cost)
  end

  def memberships
    Membership.all.select {|mem|mem.lifter==self}
  end

  def gyms
    self.memberships.map {|mem|mem.gym}
  end

  def total_membership_cost
    cost_array = self.memberships.map {|mem|mem.cost}.sum
  end

  def self.average_lift
    lift_total = @@all.map {|lifter|lifter.lift_total}.sum
    lifters = @@all.uniq.length
    average_lift_total =lift_total/lifters
    average_lift_total
  end



end
