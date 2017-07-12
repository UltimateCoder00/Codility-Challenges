require 'binary_gap'

describe 'BinaryGap' do

  context 'Example tests' do
    it 'Tests example 1' do
      n = 1041
      expect(binary_gap(n)).to eq 5
    end

    it 'Tests example 2' do
      n = 5
      expect(binary_gap(n)).to eq 0
    end
  end
end
