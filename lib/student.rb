class Student

  attr_accessor :id, :grade

  def intitialize (id:, grade:)
    @id = id
    @grade = grade
  end 
  
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]  
  
end
