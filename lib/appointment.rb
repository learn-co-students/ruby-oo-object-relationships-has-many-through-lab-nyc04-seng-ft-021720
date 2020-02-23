class Appointment
	attr_reader		:date, :doctor, :patient
	attr_writer		
	attr_accessor	

	@@all = []

	def initialize(date, patient, doctor)
		@@all.push(self)
		@date = date
		@doctor = doctor
		@patient = patient
	end

	def self.all
		@@all
	end
end