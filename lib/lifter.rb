class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
  	return @@all
  end

  def memberships
  	return Membership.all.select {|e| e.lifter == self}
  end

  def gyms
  	return self.memberships.map {|e| e.gym}
  end

  def self.average_lift_total
  	all_lift_totals = []
  	@@all.each{|e| all_lift_totals << e.lift_total}
  	average = all_lift_totals.reduce(:+).to_f / all_lift_totals.length
  	return average
  end

  def total_cost
  	result = 0
  	self.memberships.each {|e| result += e.cost}
  	return result
  end

  def sign_up(gym, cost)
  	return  Membership.new(cost, self, gym)
  end


end
