require_relative "Teacher"

class ManagerTeacher
  def initialize
    @teachers = []
  end

  def addTeacher(teacher)
    @teachers << teacher
  end

  def deleteById(id)
    @teachers.each do |teacher|
      if teacher.id == id
        @teachers.delete(teacher)
        return true
      end
    end

    return false
  end

  def getSalary(id)
    @teachers.each do |teacher|
      if teacher.id == id
          salary = teacher.salary + teacher.bonus - teacher.penaty
          teacher.realSalary = salary
          puts "Salary: #{salary}"
      end
    end

    return 0
  end
end