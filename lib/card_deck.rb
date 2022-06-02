class CardDeck
   def initialize
    @cards_left = 52
    @deck = []
    suits = ["spades", "diamonds", "hearts", "clubs"]
    ranks = ["A","2","3","4","5","6","7","8","9","10","J","Q","K"]
    
    suits.each do |suit|
      ranks.each do |rank|
        card = PlayingCard.new(rank, suit)
        @deck << card
      end
      
    end
  end
  def cards_left
    @cards_left
  end

  def deal
    @cards_left -= 1
  end 
end
