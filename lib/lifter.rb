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

  def self.average_lift
    @@all.map do |lifter|
      lifter.lift_total
    end.reduce(:+) / @@all.length
  end 

  def memberships
    Membership.all.select do |mem|
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

  def sign_up(cost, gym)
    Membership.new(cost, gym, self)
  end 

end
