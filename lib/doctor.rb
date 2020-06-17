class Doctor
    @@all=[]

    attr_reader :name

    def initialize (name)
        @name=name
        @@all.push(self)
    end

    def self.all
        @@all
    end

    def new_appointment (patient, date)
        Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all.select do |appt|
            appt.doctor==self
        end
    end

    def patients
        g=[]
        Appointment.all.each do |appt|
            if appt.doctor==self
                g.push(appt.patient)
            end
        end
        g
    end

end