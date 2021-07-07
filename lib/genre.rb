require 'pry'

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
    Song.all.select do |xx|
      xx.genre == self
    end
  end

  def artists
    self.songs.collect do |xx|
      xx.artist
    end
  end

end
