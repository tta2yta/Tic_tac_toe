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

  describe '#get_player_name' do
    it 'Display name of Player' do
      ply.player_name('AAA')
      expect(ply.get_player_name(0)).to eql('AAA')
    end
  end

  describe '#player_symbol' do
    it 'Entering correct Symbol of Player' do
      expect(ply.player_symbol?('X')). to eql(true)
    end
    it 'Entering incorrect Symbol of Player' do
      expect(ply.player_symbol?('k')). to eql(false)
    end
  end
  describe '#get_player_symbol' do
    it 'Displaying Player Symbol' do
      ply.player_symbol?('Y')
      expect(ply.get_player_symbol(0)).to eql('Y')
    end
  end
end
describe Game do
  let(:gam) { Game.new }
  describe '#validate_pos' do
    it 'return true if the position enterd is valid' do
      expect(gam.validate_pos?(7)).to eql(true)
    end
    it 'return False if the position enterd is not valid' do
      expect(gam.validate_pos?(17)).to eql(false)
    end
  end
  describe '#update_board' do
    it 'Update board if correct position is provided' do
      expected = [[1, 2, 3], [4, 5, 6], ['X', 8, 9]]
      expect(gam.update_board('X', 7)).to eql(expected)
    end
  end
  describe '#board' do
    it 'Displaying Board' do
      @cell = gam.update_board('X', 7).flatten
      expect(gam.board).to eql(@cell)
    end
  end
  describe '#check_winner' do
    it 'Checking the winner of the game' do
      gam.update_board('X', 1)
      gam.update_board('X', 2)
      gam.update_board('X', 3)
      expect(gam.check_winner?).to eql(true)
    end
  end
  describe '#check_full' do
    it 'Checking the board is full or not, return true if full' do
      gam.update_board('X', 1)
      gam.update_board('Y', 2)
      gam.update_board('X', 3)
      gam.update_board('Y', 4)
      gam.update_board('X', 5)
      gam.update_board('X', 6)
      gam.update_board('Y', 7)
      gam.update_board('Y', 8)
      gam.update_board('X', 9)
      expect(gam.check_full?).to eql(true)
    end

    it 'Checking the board is full or not returns false if not full' do
      gam.update_board('X', 1)
      gam.update_board('Y', 2)
      gam.update_board('X', 3)
      gam.update_board('Y', 4)
      gam.update_board('X', 5)
      gam.update_board('X', 6)
      gam.update_board('Y', 7)
      expect(gam.check_full?).to eql(false)
    end
  end
end
