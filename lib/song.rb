# require_relative './artist'
# require_relative './genre'

class Song
    attr_accessor :title, :artist, :genre

    @@all = []

    def initialize(title, artist, genre)
        @title = title
        @artist = artist
        @genre = genre
        @@all << self
    end

    def self.all
        @@all
    end

end