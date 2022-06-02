class CardDeck
  attr_accessor :cards

  def initialize(cards = build_deck)
    @cards = cards 
  end

  public

  def cards_left
    cards.length
  end

  def shuffle
    cards.shuffle!
  end

  def deal
    cards.shift
  end 

  private 

  def build_deck
    cards_array = []
    PlayingCard::SUITS.each do |suit|
      PlayingCard::RANKS.each { |rank| cards_array << PlayingCard.new(rank, suit)}
    end
    cards_array
  end
end
# rspec spec/playing_card_spec.rb:13
#  require 'pry'
# concept
# specification
# implementation

   # PlayingCard::SUITS.each do |suit|
    #   PlayingCard::RANKS.each { |rank| @deck << PlayingCard.new(rank, suit)}