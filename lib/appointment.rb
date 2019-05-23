class Appointment
  attr_accessor :name, :doctor, :date 
  attr_reader :name, :doctor, :date 
 
  @@all = []
  
  def initialize(name, doctor, date)
    @doctor = doctor
    @patient = patient 
    @date = date
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def patient
    self.name
  end
  
  def patients
    self.patient
    
  end
  
  def doctors
    self.doctor
  end
    
end
