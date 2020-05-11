require_relative "./lib/card"
require_relative "./lib/deck"
require_relative "./lib/player"
require_relative "./lib/turn"

class Game
  def initialize(player1, player2)
    @first_player = player1
    @second_player = player2
    @count = 0
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

    cards =  [c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,
      c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,c31,c32,c33,c34,c35,c36,c37,c38,c39,c40,
      c41,c42,c43,c44,c45,c46,c47,c48,c49,c50,c51,c52].shuffle

    deck_1_cards = cards.shift(26)
    deck_2_cards = cards

    deck1 = Deck.new(deck_1_cards)
    deck2 = Deck.new(deck_2_cards)

    player1 = Player.new(@first_player, deck1)
    player2 = Player.new(@second_player, deck2)

    turn = Turn.new(player1, player2)

    while   player1.deck.cards.size > 0 &&
            player2.deck.cards.size > 0 &&
            @count < 1000000

            @count += 1

            case turn.type
            when :basic
              winner = turn.winner
              puts "    BASIC:(#{player1.name} (#{player1.deck.cards[0].rank}) no cards #{player1.deck.cards.size} => #{player2.name}: (#{player2.deck.cards[0].rank}) no cards #{player2.deck.cards.size}"
              turn.pile_cards
              puts "        #{winner.name} won #{turn.spoils_of_war.size} cards"
              turn.award_spoils(winner)

            when :war
              winner = turn.winner
              puts "    WAR:(#{player1.name} (#{player1.deck.cards[0].rank}) no cards #{player1.deck.cards.size} => (#{player2.name}: #{player2.deck.cards[0].rank} )no cards #{player2.deck.cards.size}"
              turn.pile_cards
              puts "      #{winner.name} won #{turn.spoils_of_war.size} cards"
              turn.award_spoils(winner)
            else
              turn.pile_cards
              puts "      *mutually assured destruction* 6 removed from play"
            end

    end


          if @count >= 1000000
            p "-------------- DRAW ---------------"
          else
            p "------------- #{winner.name} has won the game ---------------"
          end

  end
end

print 'Player 1: '
first_player = gets.chomp.capitalize
print 'Player 2: '
second_player = gets.chomp.capitalize

game = Game.new( first_player, second_player )

puts "Welcome to War! (or Peace) This game will be played with 52 cards."
puts "The players today are #{first_player} and #{second_player}."
puts "Type 'GO' to start the game!"
puts '___'*25
puts "\n\n"

start_phrase = gets.chomp.upcase

if start_phrase == 'GO'
  game.start
else
  puts "Please type 'GO'"
end
