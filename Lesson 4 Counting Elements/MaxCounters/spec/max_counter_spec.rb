require 'max_counter'

describe 'Max Counter' do
  describe 'Example Tests' do
    it 'Example test: (5, [3,4,4,6,1,4,4]) to [3,2,2,4,2]' do
      expect(max_counter(5, [3,4,4,6,1,4,4])).to eq [3,2,2,4,2]
    end
  end
end
