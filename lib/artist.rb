class Artist
    
    @@all = []

attr_reader :name 

    def initialize(name)
        @name = name 
        @@all.push(self)
    end 


    def new_song(song, genre)
        Song.new(song,self,genre)
    end 

    def songs 
        Song.all.select do |songs|
            songs.artist == self 
        end 
    end 

    def genres 
        songs.map do |songs|
            songs.genre 
        end 
    end 




    def self.all
        @@all
    end











end 