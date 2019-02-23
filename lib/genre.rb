class Genre
  @@all = []
  
  #attr_accessor :artists, :songs
  attr_reader :name
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end
  
  def artists
    Song.all.map do |song|
      song.artist
    end
  end
  
end