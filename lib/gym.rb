class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all 
    @@all 
  end

  def memberships 
    #list of all memberships at a specific gym
    Membership.all.select do |memb|
      memb.gym == self 
    end 

  end 

  def lifters 
    #list of all the lifters that have membership to a specific gym
    memberships.map do |memb|
      memb.lifter
    end 
  end 

  def lifter_names 
    #list of all lifters that have a membership to that gym
    lifters.map do |lifter|
      lifter.name
    end 
  end 

  def combined_lift_total 
    # combined lift total of every lifter has a membership to that gym
    total_lift = 0 
    lifters.each do |lifter|
      total_lift += lifter.lift_total 

    end
    total_lift
  end 
end
