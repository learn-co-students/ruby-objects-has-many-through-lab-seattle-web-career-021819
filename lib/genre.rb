class Genre

attr_accessor :name
@@all = []

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
  arr = []
Song.all.each do |song|
  if song.genre == self
    arr << song.artist
end
end
arr
end

end
