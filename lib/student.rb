class Student

  attr_accessor :id

  def initialize 
     @id = DB[:conn].execute("SELECT last_insert_rowid() FROM songs")[0][0]
  end 
  
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]  
  
end
