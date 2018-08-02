class Doctor 
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end   
  
  def self.all 
    @@all 
  end 
  
  def new_appointment(date, patient)
    Appointments.new(date, self, patient)
  end   
  
  def appointments 
    Appointments.all.select do |appointment|
      appointment.doctor == self 
    end 
  end   
  
  def patients 
    patients.map do |patient|
      patient.appointment
    end 
  end   
  
end   