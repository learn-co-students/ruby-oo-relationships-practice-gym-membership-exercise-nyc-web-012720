class Gym
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def memberships
    Memberships.all.select do |mem|
      mem.gym == self
  end

  def lifters
  self.memberships.map do |mem|
    mem.lifter
  end
  
  def lifter_names
    self.lifters.map do |lifter|
      lifter.name
    end  
  end  

  def combined_lift
    self.lifters.map do |lifter|
      lifter.lift_total
    end.sum
  end  


  def self.all
    @@all
  end
 
end
end
end