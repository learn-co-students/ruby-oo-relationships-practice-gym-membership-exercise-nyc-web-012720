class Lifter
  attr_reader :name, :lift_total, :lift_average
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select{|mem| mem.lifter == self}
  end

  def gyms
    self.memberships.map {|mem| mem.gym }
  end

  def total_cost
    self.memberships.map{|mem| mem.cost}.sum
  end

  def self.lift_average
    sum = self.all.map{|lifter| lifter.lift_total}.sum
    sum.to_i/self.all.length
  end

  def sign_up(gym, cost)
    Membership.new(self, gym, cost)
  end

end
