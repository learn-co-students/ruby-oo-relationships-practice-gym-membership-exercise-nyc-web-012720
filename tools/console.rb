# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
# initiate lifters instances
# def initialize(name, lift_total)
    osgood = Lifter.new("Osgood", 200)
    sekou = Lifter.new("Sekou", 100)
    john = Lifter.new("John", 100)
    kelly = Lifter.new("Kelly", 50)
    april = Lifter.new("April", 80)
    louis = Lifter.new("Louis", 100)

# initiate gyms instances
# def initialize(name)
    bronx = Gym.new("Bronx")
    manhattan = Gym.new("Manhattan")
    brooklyn = Gym.new("Brooklyn")
    queens = Gym.new("Queens")
    staten_island = Gym.new("Staten Island")

# initiate memberships instances
# def initialize(cost, lifter, gym)

    membership1 = Membership.new(100, osgood,manhattan)
    membership2 = Membership.new(50, sekou, bronx)
    membership3 = Membership.new(100, john, manhattan)
    membership4 = Membership.new(100, kelly, brooklyn)
    membership5 = Membership.new(80, april, queens)
    membership6 = Membership.new(100, louis, staten_island)
    
binding.pry

puts "Gains!"
