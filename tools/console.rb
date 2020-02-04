require_relative '../config/environment.rb'

l1 = Lifter.new("Jill", 500)
l2 = Lifter.new("Bill", 600)
l3 = Lifter.new("Hill", 700)

g1 = Gym.new("Golds")
g2 = Gym.new("24")
g3 = Gym.new("Equinox")
g4 = Gym.new("MPHC")

M1 = Membership.new(50, g1, l1)
M2 = Membership.new(100, g2, l2)
M3 = Membership.new(200, g3, l3)
M4 = Membership.new(300, g4, l1)

binding.pry 