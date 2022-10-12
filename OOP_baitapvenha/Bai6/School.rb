require_relative "Student"

class School < Student
  def initialize
    @students = []
  end

  def addStudent(student)
    @students << student
  end

  def getStudent20YearsOld()
    students = []
    @students.each do |student|
      if student.age == 20
        students << student
      end
    end

    if students != []
      students.each do |student|
        student.show()
      end
    else
      puts "null"
    end
  end

  def countStudent23YearOldInDN()
    count = 0
    @students.each do |student|
      if student.age == 23 && student.hometown == "DN"
        count += 1
      end
    end
    return count
  end

  def show()
    @students.each do |student|
      student.show()
    end
  end
end