class Doctor
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

	def new_appointment(patient, date)
		Appointment.new(date, patient, self)
	end

	def appointments
		Appointment.all.select do |a|
			a.doctor == self
			# true
		end
		Appointment.all
	end

	def patients
		appointments.map {|a| a.patient}
	end

end