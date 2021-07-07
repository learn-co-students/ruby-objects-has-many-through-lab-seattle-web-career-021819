class Doctor

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

def new_appointment(date, patient)
  new = Appointment.new(patient, date, self)
  #new.doctor = self
end

def appointments
  Appointment.all.select do |object| #object is the appt
    object.doctor == self
  end
end

def patients
  return_array = []
  Appointment.all.each do |object|
    if object.doctor == self
       return_array << object.patient
    end
  end
  return_array
end


end
