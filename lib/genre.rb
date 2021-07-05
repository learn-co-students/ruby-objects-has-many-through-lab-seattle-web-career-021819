class Genre

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all.each do |genre|
      puts genre
    end
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    self.songs.collect do |song|
      song.artist
    end
  end
end


=begin
The Genre class needs an instance method, #artists, that iterates over the genre's collection of songs and collects the artist that owns each song.
=end
