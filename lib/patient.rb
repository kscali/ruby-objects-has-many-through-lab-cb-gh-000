class Patient 
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
  end  
  
  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end
  
  def doctors
    appointments.map do |appointment|
      appointment.doctor 
    end   
  end   
end     