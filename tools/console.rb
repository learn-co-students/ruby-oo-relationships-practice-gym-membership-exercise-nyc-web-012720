# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

pilates = Gym.new("Pilates Studio")
mercedes_club = Gym.new("Mercedes Club")
pizza_world = Gym.new("Pizza World")
crossfit = Gym.new("CrossFit")

Komal = Lifter.new("Komal", 1000)
Savita = Lifter.new("Savita", 500)

mem1= Membership.new(99, pilates, Komal)
mem2= Membership.new(100, mercedes_club, Savita)
mem3= Membership.new(25, pizza_world, Komal)
mem4= Membership.new(999, crossfit, Savita)

binding.pry