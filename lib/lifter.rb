class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total

    @@all << self
  end

  def memberships
    Memberships.all.select do |mem|
      mem.lifter == self
  end  
end

  def gyms
    self.memberships.map do |mem|
      mem.gym 
  end
end

  def total_membership_cost
    self.memberships.map do |mem|
      mem.cost
  end.sum
end

  def sign_up(gym, cost)
    Memberships.new(cost, gym, self)
  end  

  def self.average_lift
    lift_sum = Lifter.all.reduce(0) do |agg,lifter|
      agg + lifter.lift_total
  end
    lift_sum.to_f / Lifter.all.length
end  

  def self.all
    @@all
end
end