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

  def list_of_memberships
     Membership.all.select do |mem| 
      mem.lifter == self   
     end 
  end 

  def self.average_lift_total
    total = @@all.map do |lifter|
      lifter.lift_total
    end.sum
    total.to_f / Lifter.all.length

  end 

  def total_cost_of_memberships
     self.list_of_memberships.map do |mem|
      mem.cost
    end.sum
  end 

  def new_membership(gym, cost)
    Membership.new(cost, gym, self)
  end 

end
