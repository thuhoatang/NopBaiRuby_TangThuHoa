class Room
    attr_accessor :category, :price
  
    def initialize(category, price)
      @category = category
      @price = price
    end
  end