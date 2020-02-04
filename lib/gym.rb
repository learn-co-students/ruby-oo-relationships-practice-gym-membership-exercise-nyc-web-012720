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
    Membership.all.select do |mem|
      mem.gym == self 
    end 
  end 

  def list_lifters
    self.memberships.map do |mem|
      mem.lifter 
    end 
  end 

  def combined_lift_totals
    self.list_lifters.map do |mem|
      mem.lift_total 
    end.sum
  end
end
