require_relative "Student"
require_relative "School"

school = School.new
while true
  # add student
  puts "Enter number student:"
  number = gets.to_i
  for i in 0..number-1
    puts "\n-----Insert student #{i+1}-----"
    puts "Enter name:"
    name = gets.chomp
    puts "Enter age:"
    age = gets.to_i
    puts "Enter hometown:"
    hometown = gets.chomp
    puts "Enter class:"
    classStudent = gets.to_i

    student = Student.new(name, age, hometown, classStudent)
    school.addStudent(student)
  end
  puts "\n\n-----List of Student-----"
  school.show()

  # Students 20 years old
  puts "\n\n-----List of Student 20 years old-----"
  school.getStudent20YearsOld()

  # Student 20 years old and in DN
  puts "\n\n-----Number of Students 23 years old-----"
  count = school.countStudent23YearOldInDN()
  puts "count: #{count}"
end