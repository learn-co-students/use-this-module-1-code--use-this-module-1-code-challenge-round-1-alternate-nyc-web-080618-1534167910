class QueueItem
 attr_accessor :viewer, :movie, :rating

 @@all = []

 def initialize(viewer, movie, *rating)
   @viewer = viewer
   @movie = movie
   @rating = rating
   @@all << self
 end

 def self.all
   @@all
 end

 def viewer
   Viewer.all.select do |viewer|
     binding.pry

   end
 end
 ## added splat to initialize method
 ## for my "add movie" method to work and return
 ## an empty array for rating rather than breaking
 ## or returning "nil"
end
