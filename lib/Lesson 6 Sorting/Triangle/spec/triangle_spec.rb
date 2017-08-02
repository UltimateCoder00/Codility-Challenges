require 'triangle'

describe 'Triangle' do
  describe 'Example Tests' do
    it 'example: [10, 2, 5, 1, 8, 20] gives 1' do
      expect(triangle([10, 2, 5, 1, 8, 20])).to eq 1
    end

    it 'example: [10, 50, 5, 1] gives 0' do
      expect(triangle([10, 50, 5, 1])).to eq 0
    end
  end
end
