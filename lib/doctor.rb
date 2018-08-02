class Doctor 
  attr_accessor :name 
  
  @@doctors = []
  
  def initialize(name)
    @name = name 
    @@doctors << self 
  end   
  
  def new_appointment(date, patient)
    Appointment.new(date, self, patient)
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