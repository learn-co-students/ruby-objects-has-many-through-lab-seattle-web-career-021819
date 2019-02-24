class Genre

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |object|
      object.genre == self
    end
  end

  def artists
    self.songs.collect do |object|
      object.artist
    end
  end

end
