class Doctor 
  attr_accessor :name 
  
  @@doctors = []
  
  def initialize(name)
    @name = name 
    @@doctors << self 
  end   

  
end   