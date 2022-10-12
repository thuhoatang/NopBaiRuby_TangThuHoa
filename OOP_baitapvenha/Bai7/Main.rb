require_relative "ManagerTeacher"
require_relative "Teacher"

managerTeacher = ManagerTeacher.new
while true
  puts "\n\n-----Application Manager Teacher-----"
  puts "Enter 1: To insert teacher"
  puts "Enter 2: To remove teacher"
  puts "Enter 3: To get salary"
  puts "Enter 4: To exit"

  line = gets.to_i
  case line
  when 1
    puts "\n-----Insert Teacher-----"
    puts "Enter ID:"
    id = gets.chomp
    puts "Enter name:"
    name = gets.chomp
    puts "Enter age:"
    age = gets.to_i
    puts "Enter hometown:"
    hometown = gets.chomp
    puts "Enter salary:"
    salary = gets.to_i
    puts "Enter bonus:"
    bonus = gets.to_i
    puts "Enter penaty"
    penaty = gets.to_i
    # puts "Enter real salary:"
    # realSalary = gets.to_i

    teacher = Teacher.new(salary, bonus, penaty, name, age, hometown, id)

    managerTeacher.addTeacher(teacher)
  when 2
    puts "\n-----Remove teacher-----"
    puts "Enter id teacher:"
    id = gets.chomp
    managerTeacher.deleteById(id)
  when 3
    puts "\n-----Get salary teacher-----"
    puts "Enter id teacher:"
    id = gets.chomp
    managerTeacher.getSalary(id)
  when 4
    puts "Exits"
    return
  else
    puts "Invalid"
  end
end