class Artist
    @@all=[]

    attr_reader :name

    def initialize (name)
        @name=name
        @@all.push(self)
    end

    def self.all
        @@all
    end

    def new_song (name, genre)
        Song.new(name, self, genre)
    end

    def songs
        Song.all.select do |song|
            song.artist==self
        end
    end

    def genres
        g=[]
        Song.all.each do |song|
            if song.artist==self
                g.push(song.genre)
            end
        end
        g
    end

end