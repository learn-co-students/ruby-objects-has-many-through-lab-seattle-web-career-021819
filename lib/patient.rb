class Patient
  attr_reader :name, :date, :doctor

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
    Appointment.all.select do |xx|
      xx.patient == self
    end
  end

  def doctors
    self.appointments.collect do |xx|
      xx.doctor
    end
  end

end
