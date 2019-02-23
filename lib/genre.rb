class Genre
    @@all=[]

    attr_reader :name

    def initialize (name)
        @name=name
        @@all.push(self)
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select do |song|
            song.genre==self
        end
    end

    def artists
        g=[]
        Song.all.each do |song|
            if song.genre==self
                g.push(song.artist)
            end
        end
        g
    end

end