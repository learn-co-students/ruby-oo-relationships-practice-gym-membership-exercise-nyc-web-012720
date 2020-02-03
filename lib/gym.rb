class Gym

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select {|membership| membership.gym == self}
  end

  def have_membership
    members = []
    self.memberships.each do |memberships|
      members << memberships.lifter
    end
    members
  end

  def gym_lift_total
    self.have_membership.reduce(0) {|sum, lifter| sum + lifter.lift_total}
  end
end
