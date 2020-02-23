class Song
	attr_reader		:artist, :name, :genre
	attr_writer		
	attr_accessor	

	@@all = []

	def initialize(name, artist, genre)
		@@all.push(self)
		@artist = artist
		@name = name
		@genre = genre
	end

	def self.all
		@@all
	end

end