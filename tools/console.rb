# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

tom = Lifter.new("Tom", 150)
kim = Lifter.new("Kim", 120)
jen = Lifter.new("Jen", 80)
kai = Lifter.new("Kai", 200)

m_club = Gym.new("Mercedes Club")
cpy = Gym.new("Core Power Yoga")
lifetime = Gym.new("LifeTime Athletes")
ymca = Gym.new("YMCA")
blink = Gym.new("blink")

mem1 = Membership.new(tom, cpy, 140)
mem2 = Membership.new(tom, m_club, 170)
mem3 = Membership.new(tom, lifetime, 210)
mem4 = Membership.new(kai, cpy, 140)
mem5 = Membership.new(kai, m_club, 170)
mem6 = Membership.new(jen, blink, 20)
mem7 = Membership.new(kim, ymca, 10)
mem8 = Membership.new(kim, cpy, 140)

binding.pry

puts "Gains!"
