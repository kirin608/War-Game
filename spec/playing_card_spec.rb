require_relative '../lib/playing_card'

describe 'PlayingCard' do
    it 'has valid rank and suit' do
        PlayingCard::RANKS.each do |rank|
            PlayingCard::SUITS.each do |suit|
                card = PlayingCard.new(rank, suit)
                expect(card.rank).to eq rank
            end
        end
    end
    
    it 'ignores an invalid rank' do
        card = PlayingCard.new('22', 'bob')
        expect(card.rank).to be_nil
        expect(card.suit).to be_nil
    end


    it ('should return a value for the card') do
        card = PlayingCard.new('5','spades')
        expect(card.card_value).to(eq(5))
        card = PlayingCard.new('J','spades')
        expect(card.card_value).to(eq(11))
    end
   
   
    # it 'has valid rank' do
    #     card = PlayingCard.new('4','diamonds')
    #     PlayingCard::RANKS
    #     PlayingCard::SUITS
    #     expect().to eq rank
    #     expect().to eq suit
    # end
end