# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

pilates = Gym.new("Pilates Studio")
mercedes_club = Gym.new("Mercedes Club")
rise_by_we = Gym.new("Rise By We")
soul_cycle = Gym.new("Soul Cycle")

rocky = Lifter.new("Rocky Balboa", 500)
arnold = Lifter.new("Arnold Shwar", 5000000)
rhonda = Lifter.new("Rhonda Rousey", 800)

mem1 = Membership.new(100, pilates, rocky)
mem2 = Membership.new(90, mercedes_club, rocky)
mem3 = Membership.new(300, rise_by_we, arnold)
mem4 = Membership.new(200, soul_cycle, rhonda)

binding.pry

puts "Gains!"
