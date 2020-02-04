class Lifter
  attr_accessor :name, :lift_total
  @all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = Lift_total
    
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships 
    # has many 
    membership.all.select do |mem|
      mem.lifter == self
  end

  def gyms
    # has many through
    self.memberships.map do |mem|
        mem.gym
    end
  end

  def self.lifters_average
    # class method
    lift_sum = @all.map do |lifter|
      lifter.lift_total
    end.sum

    lift_sum.to_f / Lifter.lift_total.length

  end

  def total_cost
    self.memberships.map do |mem| mem.cost
    end
  end.sum

  def new_gym(gym, cost)
    membership.new(cost, gym, self)  
  end
  
end


# Get a list of all lifters

# Get a list of all the memberships that a specific lifter has

# Get a list of all the gyms that a specific lifter has memberships to

# Get the average lift total of all lifters

# Get the total cost of a specific lifter's gym memberships

# Given a gym and a membership cost, sign a specific lifter up for a new gym


