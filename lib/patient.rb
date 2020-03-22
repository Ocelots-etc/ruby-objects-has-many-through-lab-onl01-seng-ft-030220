class Patient
  attr_accessor :doctors, :name, :appointments, :doctor

  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @doctors = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  def doctors
    Appointment.all.each do |appointment|
      if appointment.patient == self
        @doctors << appointment.doctor
      end
    end
    @doctors
  end

  def appointments
    Appointment.all.each do |appointment|
      if appointment.patient == self
        @appointments << appointment
      end
    end
    @appointments
  end


end
