require 'pry'
class Genre
  attr_accessor :genre, :song, :artist, :name

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def self.all
    @@all
  end 

  def save
    @@all << self
  end

  def songs
    # binding.pry
    Song.all.select{ |song|
      song.genre.genre == self.genre
    }
  end

  def artists
    # binding.pry
    Song.all.collect{ |song|
      song.artist
    }
  end



end