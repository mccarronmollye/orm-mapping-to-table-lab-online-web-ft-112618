class Student

  attr_accessor :name
  attr_reader :id

  def initialize (name, grade, id=nil)
     @id = id
     @name = name 
  end 
  
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]  
  
end
