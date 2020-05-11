require_relative "./lib/card"
require_relative "./lib/deck"
require_relative "./lib/player"
require_relative "./lib/turn"

class Game
  def initialize(player1, player2)
    @first_player = player1
    @second_player = player2
  end

  def start
    c1  = Card.new(:heart, 'Ace', 14 )
    c2  = Card.new(:spades, 'Ace', 14)
    c3  = Card.new(:club, 'Ace', 14)
    c4  = Card.new(:diamond, 'Ace', 14)
    c5  = Card.new(:heart, 'King', 13)
    c6  = Card.new(:diamond, 'King', 13)
    c7  = Card.new(:club, 'King', 13)
    c8  = Card.new(:spades, 'King', 13)

    c9  = Card.new(:diamond, 'Queen', 12)
    c10 = Card.new(:spades, 'Queen', 12)
    c11 = Card.new(:club, 'Queen', 12)
    c12 = Card.new(:heart, 'Queen', 12)
    c13 = Card.new(:diamond, 'Jack', 11)
    c14 = Card.new(:diamond, 'Jack', 11)
    c15 = Card.new(:diamond, 'Jack', 11)
    c16 = Card.new(:diamond, 'Jack', 11)

    c17 = Card.new(:diamond, '10', 10)
    c18 = Card.new(:diamond, '10', 10)
    c19 = Card.new(:diamond, '10', 10)
    c20 = Card.new(:diamond, '10', 10)
    c21 = Card.new(:diamond, '9', 9)
    c22 = Card.new(:diamond, '9', 9)
    c23 = Card.new(:diamond, '9', 9)
    c24 = Card.new(:diamond, '9', 9)

    c25 = Card.new(:diamond, '8', 8)
    c26 = Card.new(:diamond, '8', 8)
    c27 = Card.new(:diamond, '8', 8)
    c28 = Card.new(:diamond, '8', 8)
    c29 = Card.new(:diamond, '7', 7)
    c30 = Card.new(:diamond, '7', 7)
    c31 = Card.new(:diamond, '7', 7)
    c32 = Card.new(:diamond, '7', 7)

    c33 = Card.new(:diamond, '6', 6)
    c34 = Card.new(:diamond, '6', 6)
    c35 = Card.new(:diamond, '6', 6)
    c36 = Card.new(:diamond, '6', 6)
    c37 = Card.new(:diamond, '5', 5)
    c38 = Card.new(:diamond, '5', 5)
    c39 = Card.new(:diamond, '5', 5)
    c40 = Card.new(:diamond, '5', 5)

    c41 = Card.new(:diamond, '4', 4)
    c42 = Card.new(:diamond, '4', 4)
    c43 = Card.new(:diamond, '4', 4)
    c44 = Card.new(:diamond, '4', 4)
    c45 = Card.new(:diamond, '3', 3)
    c46 = Card.new(:diamond, '3', 3)
    c47 = Card.new(:diamond, '3', 3)
    c48 = Card.new(:diamond, '3', 3)

    c49 = Card.new(:diamond, '2', 2)
    c50 = Card.new(:diamond, '2', 2)
    c51 = Card.new(:diamond, '2', 2)
    c52 = Card.new(:diamond, '2', 2)


  end
end
