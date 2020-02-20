class Doctor

    @@all = []
    attr_reader :name

    def initialize(name)
        @name = name 
        @@all.push(self)
    end 

    def self.all 
        @@all 
    end 

    def new_appointment(patient,date)
        Appointment.new(date, patient, self)
    end 

    def appointments
        Appointment.all.select do |appointments|
            appointments.doctor = self 
        end 
    end 

    def patients 
        appointments.map do |appointments|
            appointments.patient 
        end 
    end 

end 