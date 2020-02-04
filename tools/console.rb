# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

arnie = Lifter.new("Arnold", 500)
hulk = Lifter.new("Lou Ferigno", 400)
rock = Lifter.new("Dwayne", 300)

golds = Gym.new("Golds")
fit = Gym.new("Planet Fitness")
ass_green = Gym.new("Asphalt Green")

premium = Membership.new(50, arnie, golds)
regular = Membership.new(30, arnie, fit)
premium1 = Membership.new(55, hulk, golds)
regular1 = Membership.new(35, rock, ass_green)



binding.pry

0