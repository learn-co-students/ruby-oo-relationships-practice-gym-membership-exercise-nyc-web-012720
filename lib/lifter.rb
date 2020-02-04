# **should always test method (class or instance) after write them!
# [1,2,3].select.sum == [1,2,3] do |x| end.sum
class Lifter
  attr_reader :name, :lift_total, :sign_up
  @@all = []
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def membership
    Membership.all.select do |mem|
      mem.lifter == self
    end
  end

  def gym_membership
    self.membership.map do |list|
      list.gym
    end
  end

  def self.average_lift
    @@all.map do |mem|
      mem.lift_total
    end.sum
  end

  def total_cost
    all_sum = self.membership.map do |finder|
        finder.cost
  end.sum
end

  def sign_up(gym, cost)
    Membership.new(cost, gym, self)
  end
 
  def self.all 
   @@all
  end
end
