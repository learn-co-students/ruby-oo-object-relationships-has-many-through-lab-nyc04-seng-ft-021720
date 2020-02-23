require 'pry'

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

    # takes in an argument of a name and genre creates a new song
    # that song should know that it belongs to the artist
    def new_song(title, genre)
        Song.new(title, self, genre)
    end

    # iterates through all songs and finds the songs that belong 
    # to that artist
    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end

    # iterates over that artist's songs and collects the genre of 
    # each song
    def genres
        self.songs.map{|song| song.genre}
    end

end