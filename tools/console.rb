# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here


#argument(name)
la_fitness=Gym.new("La_Fitness")

equinox=Gym.new("Equinox")

planet_fitness=Gym.new("Planet_Fitness")

#argument (name, lift_total)
john=Lifter.new("John",100)

lee=Lifter.new("Lee",1500)

david=Lifter.new("David",300)

luis=Lifter.new("Luis",450)

#arguement is  (lifter,gym,cost)
standard=Membership.new(john,la_fitness,35)

premium=Membership.new(david,equinox, 100)

supreme=Membership.new(lee,planet_fitness,50)





binding.pry

puts "Gains!"
