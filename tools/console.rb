# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

equinox = Gym.new("Equinox")
nysc = Gym.new("New York Sports Club")
planet = Gym.new("Planet Fitness")
lee = Lifter.new("Lee", 5000)
jason = Lifter.new("Jason", 1000)
lou = Lifter.new("Lou", 2500)
adit = Lifter.new("Adit", 4000)
osgood = Lifter.new("Osgood", 3000)
one = Membership.new(lee, equinox, 100)
two = Membership.new(jason, nysc, 70)
three = Membership.new(lou, planet, 30)
four = Membership.new(adit, nysc, 60)
five = Membership.new(osgood, equinox, 100)
six = Membership.new(lee, nysc, 50)


binding.pry

puts "Gains!"
