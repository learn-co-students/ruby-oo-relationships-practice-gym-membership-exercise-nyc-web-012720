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
    Membership.all.select {|membership| membership.lifter == self}
  end

  def gyms
    Gym.all.select {|gym| gym.lifter = self}
  end

  def self.avg_lift_total
    self.all.reduce(0) {|sum, num| sum + num.lift_total} / self.all.length
  end

  def membership_cost
    self.memberships.reduce(0) {|sum, num| sum + num.cost} 
  end

  def new_membership (cost, gym)
    Membership.new(cost, self, gym)
  end
    

end
