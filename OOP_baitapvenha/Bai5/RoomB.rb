require_relative "Room"

class RoomB < Room
  def initialize
    super("B", 300)
  end

  def show()
    puts "Room B - category: #{@category}, price: #{@price}"
  end
end