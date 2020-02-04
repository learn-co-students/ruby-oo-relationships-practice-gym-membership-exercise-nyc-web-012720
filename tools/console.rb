# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

# make own instances of object for each class method
#since gym ==> membership <== lifeter
#It's easy to strat from class Memberhsip.
#setting data , what needs to come first? gym instance? or membership instanc? => 
# => for specific one than instance method, if needs to show all than clss method.
# **should always test method (class or instance) after write them!

gym_1 = Gym.new("Pilates")
gym_2 = Gym.new("Croos-fit")
gym_3 = Gym.new("Cardio-only")
gym_4 = Gym.new("Dead-lifter")

sam = Lifter.new("sam", 30)
paul = Lifter.new("paul", 15)
daniel = Lifter.new("daniel", 400)


mem_1 = Membership.new(1000, gym_1, sam)
mem_2 = Membership.new(200, gym_2, paul)
mem_3 = Membership.new(1500, gym_3, sam)
mem_4 = Membership.new(800, gym_3, paul)
mem_5 = Membership.new(2000, gym_1, daniel)
mem_6 = Membership.new(500, gym_2, daniel)



binding.pry

puts "Gains!"
