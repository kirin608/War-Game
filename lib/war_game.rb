 class War_game

  attr_reader :deck

  def initialize
    @deck = CardDeck.new
   @player_one = player_one
   @player_two = player_two
  end

   def start
     until deck.cards_left > 0
       player_one.take_cards(deck.deal)
       player_two.take_cards(deck.deal)
     end
   end

   def player_one
    
   end
   def player_two
   
   end

 end