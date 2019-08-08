
class Artist
    attr_accessor :name

    def initialize(name)
        @name = name
        @songs = []
    end

    def songs
        Song.all.each{|song| @songs << song if song.artist == self}
        @songs
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(name)
        song = Song.new(name)
        self.add_song(song)
    end

    def self.song_count
        Song.all.count
    end

end