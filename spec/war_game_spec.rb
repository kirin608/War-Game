require_relative '../lib/war_game'

 describe 'War_Game' do
   it ' has a valid deck' do
     game = War_game.new
     expect(game.deck).to eq CardDeck.new
   end


   it 'user has 25 cards' do
    game = War_game.new
    expect(game.user1.size).to eq (25)
   end
  # it 'user1 deck is shufle'
  # it 'user2 deck is shufle'
  # it ' has a deal'
  # it 'play  a round'

end