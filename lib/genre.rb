require_relative 'artist.rb'
require_relative 'song.rb'

class Genre
    attr_accessor :name, :Genre
    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def save
        @@all << self
    end

    def songs
        Song.all.select{|song| song.genre == self}
    end

    def artists
        songs.map{|song| song.artist}
    end

    def self.all
        @@all
    end
end