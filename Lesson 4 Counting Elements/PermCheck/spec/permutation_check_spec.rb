require 'permutation_check'

describe 'Permutation Check' do
  describe 'Example Tests' do
    it 'Test 1' do
      expect(permutation_check([4, 1, 3, 2])).to eq 1
    end

    it 'Test 2' do
      expect(permutation_check([4, 1, 3])).to eq 0
    end
  end
end
