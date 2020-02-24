require 'pry'
class Doctor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def appointments
    # binding.pry
    Appointment.all.select{ |appointment|
      appointment.doctor.name == self.name
    }
  end

  def new_appointment(patient, date)
    #given a date and a patient, creates a new appointment
    Appointment.new(date, patient, self)
  end

  def patients
    # binding.pry
    Appointment.all.collect{ |appointment|
      appointment.patient
    }
  end


end