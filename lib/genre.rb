class Genre
  @@all = []
  
  attr_accessor :artists
  attr_reader :name, :songs
  
  def initialize(name)
    @name = name
    @songs = []
    @artists = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    Songs.all.map do |song|
      song.artist == self
    end.uniq
  end
  
end