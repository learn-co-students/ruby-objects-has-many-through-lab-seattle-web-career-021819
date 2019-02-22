class Song

  attr_accessor :genre, :song_name, :artist
  @@all = []

  def initialize(song_name, artist, genre)
    @song_name = song_name
    @artist = artist
    @genre = genre
    @@all << self
  end


  def self.all
    @@all.each do |song|
      puts song
    end
  end
end
