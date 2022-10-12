require_relative "Student"
require_relative "Card"
require_relative "ManagerCard"

managerCard = ManagerCard.new
while true
  puts "\n\n-----Application Manager Card-----"
  puts "Enter 1: To insert card"
  puts "Enter 2: To remove card"
  puts "Enter 3: To show cards"
  puts "Enter 4: To exit"

  line = gets.to_i
  case line
  when 1
    puts "\nEnter ID:"
    id = gets.chomp
    puts "Enter name:"
    name = gets.chomp
    puts "Enter age:"
    age = gets.to_i
    puts "Enter school:"
    school = gets.chomp
    puts "Enter borrow date:"
    borrowDate =  gets.to_i
    puts "Enter payment date:"
    paymentDate =  gets.to_i
    puts "Enter book id:"
    bookId =  gets.chomp

    card = Card.new(name, age, school, id, borrowDate, paymentDate, bookId)

    managerCard.addCard(card)
  when 2
    puts "\nEnter id card:"
    id = gets.chomp
    managerCard.deleteCard(id)
  when 3
    puts "\n-----Show cards-----"
    managerCard.show()
  when 4
    puts "Exits"
    return
  else
    puts "Invalid"
  end
end