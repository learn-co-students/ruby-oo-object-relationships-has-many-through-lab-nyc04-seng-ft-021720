class Genre
	attr_reader		:name
	attr_writer		
	attr_accessor	

	@@all = []

	def initialize(name)
		@@all.push(self)
		@name = name
	end

	def self.all
		@@all
	end

	def songs
		Song.all.select do |song|
			song.genre == self
		end
	end

	def artists
		self.songs.map {|s| s.artist}
	end

end