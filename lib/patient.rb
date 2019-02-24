class Patient
  @@all = []
  
  attr_reader :name
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(doctor, date)
    appt = Appointment.new(date, self, doctor)
  end
  
  def appointments
    Appointments.all.select do |appt|
      appt.patient == self
    end
  end
  
  def doctors
    self.appointments.map do |appt|
      appt.doctor == self
    end
  end
  
end