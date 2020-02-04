# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
lafit = Gym.new("La Fitness")
crunch = Gym.new("Crunch")
renzo = Gym.new("Renzo Gracie")
planet = Gym.new("Planet Fitness")

rocky = Lifter.new("Rocky",5000)
arnold = Lifter.new("Arnold",10000)
rhonda = Lifter.new("Rhonda Rousey",800)

mem1 = Membership.new(rocky,lafit,100)
mem2 = Membership.new(rocky,crunch,110)
mem3 = Membership.new(rhonda,renzo,220)
mem4 = Membership.new(arnold,crunch,50)
mem5 = Membership.new(rhonda,planet,140)
mem6 = Membership.new(rocky,renzo,900)




binding.pry

puts "Gains!"
