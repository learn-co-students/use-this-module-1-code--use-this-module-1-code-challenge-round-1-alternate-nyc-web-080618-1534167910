class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def queue_items
    QueueItem.all.select do |queue|
      queue.movie == self
    end
  end

  def viewers
    viewer = QueueItem.all.select do |queue|
      queue.viewer
    end
    viewer.select do |viewer|
      viewer.movie == self
    end
  end

  def average_rating
    rating = QueueItem.all.map do |queue|
      queue.rating
    end
    binding.pry
    rating.reduce (:+)
    #attempted to use reduce to grab the average
  end

end
