class Doctor
  @@all = []
  
  attr_reader :name
  
  def initialize(name)
    @name = name
    # @appointments = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(patient, date)
    appt = Appointment.new(date, patient, self)
  end
  
  def appointments
    Appointment.all.select do |appt|
      appt.doctor == self
    end
  end
  
  def patients
    self.appointments.map do |appt|
      appt.patient
    end
  end
    
end