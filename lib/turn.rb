
class Turn
  attr_reader :player1 , :player2, :spoils_of_war
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @spoils_of_war = []
  end
  def type
    if player1.deck.rank_of_card_at(0) ==
       player2.deck.rank_of_card_at(0) &&
       player1.deck.rank_of_card_at(2) ==
       player2.deck.rank_of_card_at(2)
          :mutually_assured_destruction
    elsif player1.deck.rank_of_card_at(0) !=
          player2.deck.rank_of_card_at(0)
          :basic
    elsif player1.deck.rank_of_card_at(2)!=
          player2.deck.rank_of_card_at(2)
          :war
    end
  end
  def winner

    case self.type
    when :basic
      if player1.deck.rank_of_card_at(0) >
        player2.deck.rank_of_card_at(0)
        player1
      else
        player2
      end
    when :war

      if player1.deck.rank_of_card_at(2) >
        player2.deck.rank_of_card_at(2)
        player1
      else
        player2
      end
    else
      "No winner"
    end

  end

  def pile_cards

    case self.type
    when :basic
      @spoils_of_war.concat(player1.deck.remove_card(1), player2.deck.remove_card(1)) 
    when :war
      @spoils_of_war.concat(player1.deck.remove_card(3), player2.deck.remove_card(3))
    else
      player1.deck.remove_card(3)
      player2.deck.remove_card(3)
    end
  end
  def award_spoils(champ)
      (champ.deck.cards.concat(@spoils_of_war))
      @spoils_of_war = []
  end
end
