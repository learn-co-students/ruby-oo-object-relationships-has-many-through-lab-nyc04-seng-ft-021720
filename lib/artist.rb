class Artist
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

	def new_song(name, genre)
		Song.new(name, self, genre)
	end

	def songs
		Song.all.select do |song|
			song.artist == self
		end
	end

	def genres
		self.songs.map {|s| s.genre}
	end
end