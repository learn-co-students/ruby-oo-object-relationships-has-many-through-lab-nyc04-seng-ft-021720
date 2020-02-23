class Patient
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

	def new_appointment(doctor, date)
		Appointment.new(date, self, doctor)
	end

	def appointments
		Appointment.all.select do |a|
			a.patient == self
		end
	end

	def doctors
		self.appointments.map {|a| a.doctor}
	end
end