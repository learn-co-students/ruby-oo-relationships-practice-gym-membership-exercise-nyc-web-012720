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
    #return array of membership objects, specific to the gym
    Membership.all.select do |mem|
      mem.gym == self
    end
  end

  def lifters
    #return array of lifters objects, specific to the gym
    self.memberships.map do |mem|
      mem.lifter
    end
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

end
