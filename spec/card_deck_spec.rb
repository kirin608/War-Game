require_relative '../lib/card_deck'
require_relative '../lib/playing_card'
require 'pry'

describe 'CardDeck' do
  it 'Should have 52 cards when created' do
    deck = CardDeck.new
    expect(deck.cards_left).to eq 52
  end

  it 'should deal the top card' do
    deck = CardDeck.new
    card = deck.deal
    expect(card).to_not be_nil
    expect(deck.cards_left).to eq 51
  end

  it 'should check if deck was built right' do
    deck = CardDeck.new
    expect(deck.deal).to eq PlayingCard.new("A","spades")
  end
  
  it 'initialise full deck' do
    deck = CardDeck.new
    expect(deck.cards_left).to eq(52)
  end
  

  describe '#shuffle' do
    it 'deck should suffle' do
      #given 
      deck = CardDeck.new
      original_order = deck.cards.map(&:rank)
      #when
      deck.shuffle
      new_order = deck.cards.map(&:rank)
      #then
      expect(original_order).to_not eq(new_order)
    end
  end

end
   



 

