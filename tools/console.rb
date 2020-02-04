# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

joey = Lifter.new("Joey", 350)
jay = Lifter.new("Jay", 450)
eric = Lifter.new("Eric", 200)

crunch = Gym.new("Crunch")
nysc = Gym.new("NYSC")
equinox = Gym.new("Equinox")
blink = Gym.new("Blink")

mem1 = Membership.new(150, joey, nysc)
mem2 = Membership.new(85, jay, crunch)
mem3 = Membership.new(215, eric, equinox)
mem4 = Membership.new(30, eric, blink)
mem5 = Membership.new(30, joey, blink)
mem6 = Membership.new(215, jay, equinox)
mem7 = Membership.new(85, eric, crunch)
# test code goes here

binding.pry

puts "Gains!"
