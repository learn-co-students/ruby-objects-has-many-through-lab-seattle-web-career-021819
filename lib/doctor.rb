require 'pry'

class Doctor
  attr_reader :name, :patient, :date

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select do |xx|
      xx.doctor == self
    end
  end

  def patients
    self.appointments.collect do |xx|
      xx.patient
    end
  end

end
