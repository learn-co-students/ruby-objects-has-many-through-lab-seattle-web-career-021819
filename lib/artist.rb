require 'pry'

class Artist
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(song, genre)
    Song.new(song, self, genre)
  end

  def songs
    Song.all.select do |xx|
      xx.artist == self
    end
  end

  def genres
    self.songs.collect do |xx|
      xx.genre
    end
  end

end
