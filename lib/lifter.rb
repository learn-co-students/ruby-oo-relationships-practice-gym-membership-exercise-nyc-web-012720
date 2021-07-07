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
    #return the array of memberships objects, specific to this lifter
    Membership.all.select do |mem| 
      mem.lifter == self
    end
  end

  def gyms
    # return array of gym objects, specific to this lifter
    self.memberships.map do |mem|
      mem.gym
    end
  end

  def self.average_lift
    #find the sum of all lift totals
    #divide the sum by the total number of lifters
    lift_sum = @@all.map do |lifter|
      lifter.lift_total
    end.sum
    #alternative reduce method
    # lift_sum = Lifter.all.reduce(0) do |add, lifter|
    #   add + lifter.lift_total
    # end
    lift_sum.to_f / Lifter.all.length
  end

  def total_membership_cost
    #get this lifter's memberships
    #get the cost of each membership
    #add them
    self.memberships.map do |mem|
      mem.cost
    end.sum
  end

  def sign_up(cost, gym)
    Membership.new(cost, gym, self)
  end


end
