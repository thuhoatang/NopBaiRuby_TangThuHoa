require_relative "Room"

class RoomC < Room
  def initialize
    super("C", 100)
  end

  def show()
    puts "Room C - category: #{@category}, price: #{@price}"
  end
end