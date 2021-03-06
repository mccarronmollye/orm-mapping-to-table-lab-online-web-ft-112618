class Student

  attr_accessor :name, :grade
  attr_reader :id

  def initialize (name, grade, id=nil)
     @id = id
     @name = name 
     @grade = grade
  end 
  
  def self.create_table
    sql =  <<-SQL 
      CREATE TABLE IF NOT EXISTS students (
        id INTEGER PRIMARY KEY, 
        name TEXT, 
        grade TEXT
        )
        SQL
    DB[:conn].execute(sql) 
  end
  
  def self.drop_table
    sql =  <<-SQL 
      DROP TABLE students
        SQL
    DB[:conn].execute(sql)
  end 
  
   def save
    sql = <<-SQL
      INSERT INTO students (name, grade) 
      VALUES (?, ?)
    SQL
 
    DB[:conn].execute(sql, self.name, self.grade)
    
    @id = DB[:conn].execute("SELECT last_insert_rowid() FROM students")[0][0] #last_insert_rowid() is a sqlite function which does exactly what it sounds like!!!! However I don't understand what [0][0] means.. learn says we'll cover this later!

   end
  
   
   def self.create(name:, grade:)
     student = Student.new(name, grade)
     student.save
     student #to return the record we just created
   end
    
  
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]  
  
end
