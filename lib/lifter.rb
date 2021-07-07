class Lifter
  attr_reader :name, :lift_total

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
    Membership.all.select{|membership| membership.lifter == self}
  end

  def gyms
    self.memberships.map{|membership| membership.gym}
  end

  def self.average_lift_total

    total = @@all.reduce(0){|total_lifted, lifter| total_lifted + lifter.lift_total}
    count = @@all.count

    total / count
  end

  def total_cost
    self.memberships.reduce(0){|total, membership| total + membership.cost}
  end

  def sign_up_for_gym(gym, cost)
    Membership.new(self, gym, cost)
  end 
end
