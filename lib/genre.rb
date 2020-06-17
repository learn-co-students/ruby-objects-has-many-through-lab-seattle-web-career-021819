class Genre
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  # Returns an array of songs of this genre
  def songs
    Song.all.select {|song| song.genre == self}
  end

  # Returns an array of artists with songs of this genre
  def artists
    (songs.map {|song| song.artist}).uniq
  end

  def self.all
    @@all
  end
end
