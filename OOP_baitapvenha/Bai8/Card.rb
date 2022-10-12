require_relative "Student"

class Card < Student
  attr_accessor :name, :age, :school, :id, :borrowDate, :paymentDate, :bookId

  def initialize(name, age, school, id, borrowDate, paymentDate, bookId)
    super(name, age, school)
    @id = id
    @borrowDate = borrowDate
    @paymentDate = paymentDate
    @bookId = bookId
  end

  def show()
    puts "Id: #{@id}, name: #{@name}, age: #{@age}, school: #{@school}, borrow date: #{@borrowDate}, payment date: #{@paymentDate}, book id: #{@bookId}"
  end
end