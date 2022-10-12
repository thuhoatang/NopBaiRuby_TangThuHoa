class Student
    attr_accessor :name, :age, :hometown, :classStudent
  
    def initialize(name, age, hometown, classStudent)
      @name = name
      @age = age
      @hometown = hometown
      @classStudent = classStudent
    end
  
    def show()
      puts "Name: #{@name}, age: #{@age}, hometown: #{@hometown}, class student: #{@classStudent}"
    end
  end