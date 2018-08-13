require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
david = Viewer.new("David")
jesse = Viewer.new("Jesse")
mike = Viewer.new("Mike")
johnny = Viewer.new("Johnny")

lion = Movie.new("Lion King")
hercules = Movie.new("Hercules")
scream = Movie.new("Scream")
dark = Movie.new("Dark Knight")

q1 = QueueItem.new(david, lion, 10)
q2 = QueueItem.new(jesse, hercules, 7)
q3 = QueueItem.new(mike, scream, 5)
q4 = QueueItem.new(johnny, dark, 3)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
