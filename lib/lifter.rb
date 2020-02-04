class Lifter
  attr_reader :name, :lift_total

   @@all=[]

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  #Get a list of all lifters
  def self.all
    @@all
  end

  #Get a list of all the memnberships that a specific lifter has
  def memberships
    Membership.all.select {|members| members.lifter==self}
  end

  #Get a list of all they gyms that a specific lifter has memberships to 
  def gym
    self.memberships.map{|lifter| lifter.gym}
  end

  #Get the average lift total of all lifters
  def avg_total
    @@all.reduce(0){|total,lifters| total+ lifters.lift_total}/@@all.length
  end

  #Get the total cost of a specific lifter's gym memberships
  def total_cost
    self.memberships.reduce(0){|sum,gym|sum+gym.cost}
  end

  #Given a gym and a membership cost, sign a specific lifter up for a new gym
  def sign_up(gym,cost)
    Membership.new(self,gym,cost)
  end












end
