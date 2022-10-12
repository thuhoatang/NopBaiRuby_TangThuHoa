require_relative "Hotel"
require_relative "Person"
require_relative "Room"
require_relative "RoomA"
require_relative "RoomB"
require_relative "RoomC"

hotel = Hotel.new
while true
  # system("clear") || system("cls")
  puts "\n\n-----Application Manager Candidate-----"
  puts "Enter 1: To insert person for rent"
  puts "Enter 2: To remove person by passport"
  puts "Enter 3: To calculator price by passport"
  puts "Enter 4: To show infor"
  puts "Enter 5: To exit:"

  line = gets.to_i
  case line
  when 1
    puts "\n-----Insert person-----"
    puts "Enter name:"
    name = gets.chomp
    puts "Enter age:"
    age = gets.to_i
    puts "Enter passport:"
    passport = gets.chomp

    puts "Choise a to rent room type A"
    puts "Choise b to rent room type B"
    puts "Choise c to rent room type C"
    choice = gets.chomp
    if choice == "a"
      room = RoomA.new
    elsif choice == "b"
      room = RoomB.new
    elsif choice == "c"
      room = RoomC.new
    end

    puts "Enter number day for rent:"
    numberRent = gets.to_i

    person = Person.new(name, age, passport, room, numberRent)
    hotel.addPerson(person)
  when 2
    puts "\n-----Remove person-----"
    puts "Enter passport:"
    passport = gets.chomp
    hotel.deletePerson(passport)
  when 3
    puts "\n-----Calculation price-----"
    puts "Enter passport:"
    passport = gets.chomp
    price = hotel.calculator(passport)
    puts "Price: #{price}"
  when 4
    puts "\n-----List of Customer-----"
    hotel.show()
  when 5
    puts "Exits"
    return
  else
    puts "Invalid"
  end
end