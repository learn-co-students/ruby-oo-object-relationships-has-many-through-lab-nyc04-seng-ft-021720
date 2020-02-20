class Genre

@@all = []

attr_reader :name

def initialize(name)
    @name = name 
    @@all.push(self)
end 


def self.all
    @@all 
end 

def songs
    Song.all.select do |songs|
        songs.genre == self
    end 
end 

def artists
    songs.collect do |songs|
        songs.artist 
    end 
end 




end 