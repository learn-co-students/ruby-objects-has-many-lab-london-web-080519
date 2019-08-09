require 'pry'
require_relative 'artist.rb'

class Song

    attr_reader :name
    attr_accessor :artist

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def name
        @name
    end

    def artist_name
        if @artist
            self.artist.name
        else
            nil
        end
    end

end

# song1 = Song.new('Survivor')
# song2 = Song.new('Deep')
# song3 = Song.new('Galway')

# drake = Artist.new('Drake')
# adele = Artist.new('adele')
# sheeran = Artist.new('sheeran')
# #binding.pry
# song.artist = drake
# #binding.pry
# 0