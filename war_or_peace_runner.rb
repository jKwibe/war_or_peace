require_relative "./lib/card"
require_relative "./lib/deck"
require_relative "./lib/player"
require_relative "./lib/turn"

class Game
  def initialize(player1, player2)
    @first_player = player1
    @second_player = player2
  end
end
