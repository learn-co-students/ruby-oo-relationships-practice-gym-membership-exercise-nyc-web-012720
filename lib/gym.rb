#Do we nned class method? or instnace method?
# **should always test method (class or instance) after write them!
class Gym
  attr_accessor :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def membership
    Membership.all.select do |mem|
      mem.gym == self
    end
  end

  def get_lifters
    self.membership.map do |mem|
        mem.lifter 
    end
  end

  def list_names
    self.get_lifters.map do |mem|
      mem.name
    end
  end

  def total_lifeter
    self.get_lifters.map do |mem|
      mem.lift_total
    end.sum 
  end

  def self.all
    @@all
  end
end
