class Gym
  attr_accessor :name
  @all =[]

  def initialize(name)
    @name = name
    @@self << self
  end

  def memberships
    Membership.all.select do |mem|
      mem.gym == self
    end
  end

  def lifters
    self.memberships.map do |mem|
      mem.lifter
    end
  end

  def lifter_names
    self.lifters.map do |lifter| lifter.name
    end
  end

  def combined_total
    self.lifters.map do |lifter| lifter.lift_total
    end.sum
  end

end

# Get a list of all gyms

# Get a list of all memberships at a specific gym

# Get a list of all the lifters that have a membership to a specific gym

# Get a list of the names of all lifters that have a membership to that gym

# Get the combined lift total of every lifter has a membership to that gym