require_relative '../lib/war_game'

 describe 'War_Game' do
   it 'has a valid deck' do
     game = War_game.new
     expect(game.deck).to eq CardDeck.new
   end

   it 'each player has half of the deck' do 
    game = War_game.new
    game.start
    expect(game.player_one.cards_left).to eq(26)
    expect(game.player_two.cards_left).to eq(26)
  end
   
  # it ' has a deal'
  # it 'play  a round'

end