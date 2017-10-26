require 'stone_wall'

describe 'Stone Wall' do
  describe 'Example Tests' do
    it 'example: [8, 8, 5, 7, 9, 8, 7, 4, 8] gives 7' do
      expect(stone_wall([8, 8, 5, 7, 9, 8, 7, 4, 8])).to eq 7
    end
  end
end
