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
    #list of all the memberships that a specific lifter has
    Membership.all.select do |memb|
      memb.lifter == self 
    end 
  end 

  def gyms
    #list of all the gyms that a specific lifter has memberships to 
    self.memberships.map do |memb|
      memb.gym
    end 
  end 


  def self.average_lift 
    #average lift total of all lifters
    
    lift_list = self.all.map do |lifter|
      lifter.lift_total 
    end
    lift_length = lift_list.length 
    lift_sum = lift_list.sum 
    lift_avg = lift_sum.to_f/lift_length

    lift_avg
    
  end 

  def total_cost
    # total cost of a specific lifter's gym memberships
    cost_array = self.memberships.map do |memb|
      memb.cost 
    end

    cost_array.reduce(:+)

  end 

  def sign_up(cost,gym)
    # given  a gym and a membership cost, sign a specific lifter up for a new gym
    Membership.new(cost, gym, self)
  end 

end
