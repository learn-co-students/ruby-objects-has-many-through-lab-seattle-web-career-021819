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
  Song.new(name, self, genre)
end

def songs
  Song.all.select do |song|
    song.artist == self
end
end

def genres
  arr = []
Song.all.each do |song|
  if song.artist == self
    arr << song.genre
end
end
arr
end
end
