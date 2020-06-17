class Patient
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  # Creates a new appointment with given doctor and date with this patient
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  # Returns an array of appointments with this patient
  def appointments
    Appointment.all.select {|apmt| apmt.patient == self}
  end

  # Returns an array of doctors with appointments with this patient
  def doctors
    (appointments.map {|apmt| apmt.doctor}).uniq
  end

  def self.all
    @@all
  end
end
