require_relative 'appointment.rb'
require_relative 'patient.rb'

class Doctor
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def appointments
        Appointment.all.select{|appointments| appointments.doctor == self}
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end

    def patients
        appointments.map{|doctor| doctor.patient}
    end

    def self.all
        @@all
    end

end