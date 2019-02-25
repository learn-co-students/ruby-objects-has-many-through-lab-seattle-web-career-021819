

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


def new_song(name, genre)
  song_name = Song.new(name, self, genre)
end


def songs
  Song.all.select do |song|
  song.artist == self
  end
end

def genres
  self.songs.map do |each_genre|
    each_genre.genre
end
end

end
