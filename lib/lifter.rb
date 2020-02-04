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

  #Get a list of all the memnberships that a specific lifter has (if there is specific word means instance method)
  def memberships
    Membership.all.select {|members| members.lifter==self}
  end

  #Get a list of all they gyms that a specific lifter has memberships to 
  def gym
    self.memberships.map{|lifter| lifter.gym}
  end

  #Get the average lift total of all lifters (you want the get class method since we want to get the avg)
  def self.avg_total
    @@all.reduce(0){|total,lifters| total + lifters.lift_total}/@@all.length

    #@@all.map.do |lifter| lifter.lift_total end.sum //@@all.length


    # lift_sum=Lifter.all.reduce(0) do|total,lifter|
    #   total+lifter.lift_total
    # end
    # lift_sum.to_f/Lifter.all.length
  end


  #Get the total cost of a specific lifter's gym memberships
  def total_cost
    self.memberships.reduce(0){|sum,gym|sum+gym.cost}

    # map method
    # self.memberships.map do |mem|
    #   mem.cost
    # end.sum
  end

  #Given a gym and a membership cost, sign a specific lifter up for a new gym
  def sign_up(gym,cost)
    # Check the membership file for the order of Memberships(, , ,)
    Membership.new(self,gym,cost)
  end












end
