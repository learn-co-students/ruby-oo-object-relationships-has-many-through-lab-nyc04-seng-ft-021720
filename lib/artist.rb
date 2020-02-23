require_relative 'song.rb'
require_relative 'genre.rb'

class Artist
    attr_accessor :name, :genre
    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def self.all
        @@all
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def songs
        Song.all.select{|song| song.artist == self}
    end

    def genres
        songs.map{|song| song.genre}
    end

    def save
        @@all << self
    end
end