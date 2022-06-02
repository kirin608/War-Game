 class War_game

  attr_reader :deck

  def initialize
    @deck = CardDeck.new
   @player1 = player1
   @player2 = player2
  end

  def deal
    
  end

  def user1
    @user1 = @deck[0..24]
    @user1= user1.shufle
  end
  def user2
    @user2 = @deck[25..51]
    @user2 = user2.shufle
  end

 end