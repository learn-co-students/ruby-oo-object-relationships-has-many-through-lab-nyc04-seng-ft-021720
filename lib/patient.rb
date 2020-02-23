require_relative 'appointment.rb'
require_relative 'doctor.rb'

class Patient
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select{|appointments| appointments.patient == self}
    end

    def doctors
        appointments.map{|patients| patients.doctor}
    end
end