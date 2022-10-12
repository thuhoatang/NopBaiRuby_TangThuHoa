require_relative "Student"
require_relative "Card"

class ManagerCard < Card
  def initialize
    @cards = []
  end

  def addCard(card)
    @cards << cards
  end

  def deleteCard(id)
    @cards.each do |card|
      if card.id == id
        @cards.delete(card)
        return true
      end
    end

    return false
  end

  def show()
    @cards.each do |card|
      card.show()
    end
  end
end