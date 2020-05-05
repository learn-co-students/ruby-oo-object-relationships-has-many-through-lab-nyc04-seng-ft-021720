class Patient
    attr_accessor :patient 
    @@all = [] 
    
    def initialize(patient)
        @patient = patient
        @@all << self 
    end  
    
    def self.all 
        @@all 
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor) 
    end 

    def appointments
        Appointment.all.select do |app|
        app.patient == self 
        end  
    end 

    def doctors 
        appointments.map do |app| 
        app.doctor 
        end  
    end 



end 