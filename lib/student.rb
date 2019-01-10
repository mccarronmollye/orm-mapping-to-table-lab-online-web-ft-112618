class Student

  #attr_accessor 
  attr_reader :id

  def initialize (id=nil)
     @id = id
  end 
  
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]  
  
end
