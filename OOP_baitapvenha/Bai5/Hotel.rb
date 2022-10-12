require_relative "Person"
require_relative "Room"

class Hotel < Person
  def initialize
    @room = []
  end

  def addPerson(person)
    @room << person
    puts("Add successfully")
  end

  def deletePerson(passport)
    person = findPersonByPassport(passport)
    @room.delete(person)
    puts "Remove successfully"
  end

  def calculator(passport)
    person = findPersonByPassport(passport)
    return total = person.room.price * person.numberRent
  end

  def findPersonByPassport(passport)
    @room.each do |person|
      if person.passport == passport
        return person
      end
    end
  end

  def show()
    @room.each do |person|
      person.show()
    end
  end
end