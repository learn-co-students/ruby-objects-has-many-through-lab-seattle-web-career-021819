class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    new = Song.new(name, self, genre)
    #new.artist == self
  end

  def songs
    Song.all.select do |object|
      object.artist == self
    end
  end

  def genres
    self.songs.collect do |object|
      object.genre
    end
  end

end
