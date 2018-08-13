class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    @@all << self
  end

  def self.all
    @@all
  end

  def queue_items
    QueueItem.all.select do |queue|
      queue.viewer == self
    end
  end

  def queue_movies
    movie = QueueItem.all.select do |queue|
      queue.movie
    end
    movie.select do |movie|
      movie.viewer == self
    end
  end

  def add_movie_to_queue(movie)
    QueueItem.new(self, movie)
    #when tested, rating was returned with an empty array
  end

end
