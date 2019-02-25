class Artist
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  # Returns an array of all the songs by this artist
  def songs
    Song.all.select {|song| song.artist == self}
  end

  # Returns an array of all the genres of the songs by this artist
  def genres
    (self.songs.map {|song| song.genre}).uniq
  end

  def self.all
    @@all
  end
end
