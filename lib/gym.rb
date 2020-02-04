class Gym
  attr_reader :name

  @@all=[]

  def initialize(name)
    @name = name

    @@all << self
  end

  #Get a list of all gyms
  def self.all
    @@all
  end

  #Get a list of all memberships at a specific gym
  def memberships
    Membership.all.select{|membership| membership.gym==self}
  end

  #Get a list of all the lifters that have a membership to a specific gym
  def lifters
    self.memberships.map{|members| members.lifter}
  
  end

  # Get a list of the names of all lifters that have a membership to that gym (this should be instance method since plurality matters to that specific gym not gyms)
  def lifters_name
   self.lifters.map{|members| members.name}
  end


  # Get the combined lift total of every lifter has a membership to that gym
  def total_lift
    self.lifters.reduce(0){|total,lifter| total + lifts.lifter_total}

    #map method
    # self.lifters.map{|lifter| lifter.lift_total}.sum

  end


end
