# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

planet = Gym.new("Planet Fitness")
ny = Gym.new("NY Sports Club")
soul = Gym.new("Soul Cycle")

rocky = Lifter.new("Rocky Balboa", 500)
arnold = Lifter.new("Arnold Schwartz", 1000)
ronda = Lifter.new("Rhonda Rousey", 450)

mem1 = Membership.new(100, planet, rocky)
mem2 = Membership.new(50, soul, ronda)
mem3 = Membership.new(75, ny, arnold)
mem4 = Membership.new(25, planet, ronda)
mem5 = Membership.new(80, soul, arnold)


binding.pry

puts "Gains!"
