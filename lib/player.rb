class Player
  attr_reader :name, :deck
  def initialize(name, deck)
    @name = name
    @deck = deck
  end
  def lost?
    self.deck.cards.size <= 0
  end
end
