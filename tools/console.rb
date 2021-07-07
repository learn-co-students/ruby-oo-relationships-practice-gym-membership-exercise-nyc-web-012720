# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

pilates = Gym.new("Pilates Studio")
nysc = Gym.new("NYSC")
rise_by_we = Gym.new("Rise By We")
soul_cycle = Gym.new("SoulCycle")

rocky = Lifter.new("Rocky Balboa", 1000)
arnold = Lifter.new("Arnold Schwartz", 600)
rhonda = Lifter.new("Rhonda Rousey", 700)

mem1 = Membership.new(100, pilates, rocky)
mem2 = Membership.new(200, pilates, arnold)
mem3 = Membership.new(300, nysc, rhonda)
mem4 = Membership.new(400, nysc, rocky)
mem5 = Membership.new(500, rise_by_we, arnold)
mem6 = Membership.new(600, soul_cycle, rhonda)

yo = rocky.signup(7000, soul_cycle)

binding.pry

puts "Gains!"
