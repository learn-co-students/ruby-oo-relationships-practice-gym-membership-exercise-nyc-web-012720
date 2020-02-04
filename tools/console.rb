# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

test_gym1 = Gym.new("Pilates Studio")
test_gym2 = Gym.new("Yoga")
test_gym3 = Gym.new("asdf")
test_gym4 = Gym.new("fdsa")
 
lifter_test1 = Lifter.new("Rocky", 500)
lifter_test2 = Lifter.new("Arnold", 5000)
lifter_test3 = Lifter.new("Ronda", 700)

memb_1 = Membership.new(200, test_gym1, lifter_test1)
memb_2 = Membership.new(340, test_gym2, lifter_test2)
memb_3 = Membership.new(211, test_gym3, lifter_test3)
memb_4 = Membership.new(432, test_gym4, lifter_test3)
memb_5 = Membership.new(189, test_gym2, lifter_test2)


binding.pry

puts "Gains!"
