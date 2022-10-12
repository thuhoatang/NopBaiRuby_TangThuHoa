require_relative "Room"

class Person < Room
  attr_accessor :name, :age, :passport, :room, :numberRent

  def initialize(name, age, passport, room, numberRent)
    @name = name
    @age = age
    @passport = passport
    @room = room
    @numberRent = numberRent
  end

  def show()
    puts "Name: #{@name}, age: #{@age}, passport: #{@passport}, room: #{@room}, number rent: #{@numberRent}"
  end
end