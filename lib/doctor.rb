class Doctor 
  
  attr_accessor :name, :patients, :appointments
  
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all 
  end
  
  def new_appointment(patient, doctor)
    Appointment.new(patient, self, doctor)
  end
  
  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor ==self
    end
  end
  
  def patients 
    appointments.map do |appointment|
      appointment.name
      appointment.patients
    end
  end
end