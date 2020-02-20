class Patient
    


    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name 
        @@all.push(self)
    end 


    def new_appointment(doctor, date)
        Appointment.new(date,self, doctor)
    end 

    def appointments
        Appointment.all.select do |appointments|
            appointments.patient == self 
        end 
    end 

    def doctors 
        appointments.map do |appointments|
            appointments.doctor 
        end 
    end 


    def self.all
        @@all 
    end 
end 