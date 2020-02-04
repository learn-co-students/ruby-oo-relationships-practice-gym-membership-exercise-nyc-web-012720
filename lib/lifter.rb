require 'pry'

class Lifter
  attr_reader :name, :lift_total

  @@all = []
  
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total

    @@all << self
  end

  def memberships
    Membership.all.select { |membership|
    membership.lifter == self }
  end
  
  def gyms
    #input = array of lifter objects
    #output should be array of string with names of gym associated to the lifter
    self.memberships.map { |membership| #Im using the return value from meberships [memberships for lifter]
    membership.gym }
  end

  def self.avg_lift
      lift_sum = @@all.map {|lifter| lifter.lift_total}.sum
      lift_sum.to_f / Lifter.all.length
  end

  def total_cost
    self.memberships.map {|mem| mem.cost}.sum
  end

  def sign_up(cost, gym)
    Membership.new(cost, gym, self)
  end
  
  def self.all
    @@all
  end

end