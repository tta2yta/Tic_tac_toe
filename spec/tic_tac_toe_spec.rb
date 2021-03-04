# spec/tic_tac_toe_spce.rb
require './lib/game'
require './lib/player'

describe Player do
  let(:ply) { Player.new }
  let(:arr) { [] }
  let(:board) { [[1, 2, 3], [4, 5, 6], [7, 8, 9]] }

  describe '#player_name' do
    it 'Adding name of the Player' do
      expect(ply.player_name('Luqman')).to eql(arr.push('Luqman'))
    end
  end
end
