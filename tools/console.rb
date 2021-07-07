# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
#Gyms
pilates = Gym.new("Pilates Studio")
mercedes_club = Gym.new("Mercedes Club")
rise_by_we = Gym.new("Rise By We")
soul_cycle = Gym.new("Soul_Cycle")
#---
#Lifters
rocky = Lifter.new("Rocky Balboa", 500)
arnold = Lifter.new("Arnold Shwarzzz", 5000000)
ronda = Lifter.new("Ronda Rousey", 800)
#---
#Membership *Cant establish relationships between things that don't exist!
mem1 = Membership.new(100, pilates, rocky)
mem2 = Membership.new(90,mercedes_club, rocky)
mem3 = Membership.new(300,rise_by_we, arnold)
mem4 = Membership.new(280,soul_cycle, ronda)
mem5 = Membership.new(173,rise_by_we, ronda)
mem6 = Membership.new(1000,mercedes_club, rocky)
#----
arnold.gyms
po = ronda.gyms
go = Lifter.avg_lift_total
yo = ronda.total_membership_cost
yo2 = rocky.total_membership_cost
yo3 = rocky.sign_up(soul_cycle, 500)
yo4 = arnold.sign_up(pilates, 800)
yo5 = rise_by_we.lifter_names
yo6 = rise_by_we.comb_lift
binding.pry

puts "Gains!"
