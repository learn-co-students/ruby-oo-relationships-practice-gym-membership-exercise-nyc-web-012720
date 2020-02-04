# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'
require 'pry'

# test code goes here

planet = Gym.new("Planet Fitness")
la = Gym.new("L.A. Fitness")
blink = Gym.new("Blink Fitness")
ny = Gym.new("New York Sports")

jimmy = Lifter.new("James Harden", 85)
ky = Lifter.new("Kyrie Irving", 110)
kevin = Lifter.new("Kevin Durant", 40)
rick = Lifter.new("Rick Ross", 250)
janet = Lifter.new("Janet Jackson", 145)
larry = Lifter.new("Larry Hoover", 185)

dirt = Membership.new(5, blink, kevin)
wood = Membership.new(15, planet, rick)
bronze = Membership.new(50, planet, jimmy)
silver = Membership.new(50, la, ky)
gold = Membership.new(50, blink, rick) 
platinum = Membership.new(50, planet, jimmy)
diamond = Membership.new(50, ny, janet)

# Lifter.all 
# Lifter.average_lift
# rick.memberships
# jimmy.gyms
# jimmy.total_membership_cost
# janet.sign_up(145, la)

# Gym.all
# planet.memberships
# la.lifters
# blink.lifter_names
# planet.lift_totals

binding.pry


