class Teacher
    attr_accessor :salary, :bonus, :penaty, :realSalary, :name, :age, :hometown, :id
  
    def initialize(salary, bonus, penaty, name, age, hometown, id)
      @salary = salary
      @bonus = bonus
      @penaty = penaty
      @name = name
      @age = age
      @hometown = hometown
      @id = id
    end
  end