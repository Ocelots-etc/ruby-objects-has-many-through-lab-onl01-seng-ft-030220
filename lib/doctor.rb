class Doctor
  attr_accessor :name, :appointments, :patients, :patient, :doctor

  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @patients = []
    @@all << self
  end

  def self.all
    @@all
  end


  def appointments
    Appointment.all.each do |appointment|
      if appointment.doctor == self
        @appointments << appointment
      end
    end
    @appointments
  end

  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end

  def patients
    Appointment.all.each do |appointment|
      if appointment.doctor == self
        @patients << appointment.patient
      end

    end
    @patients
  end
end