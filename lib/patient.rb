class Patient

attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor,date)
    new = Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select do |object|
      object.patient == self
    end
  end

  def doctors
    self.appointments.collect do |object|
      object.doctor
    end
  end

end
