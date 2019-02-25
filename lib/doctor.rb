class Doctor
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  # Creates a new appointment with given patient and date with this doctor
  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end

  # Returns an array of appointments with this doctor
  def appointments
    Appointment.all.select {|apmt| apmt.doctor == self}
  end

  # Returns an array of patients with appointments with this doctor
  def patients
    (appointments.map {|apmt| apmt.patient}).uniq
  end

  def self.all
    @@all
  end
end
