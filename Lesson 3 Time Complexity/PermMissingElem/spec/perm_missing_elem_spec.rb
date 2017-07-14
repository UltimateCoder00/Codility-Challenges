require 'perm_missing_elem'

describe 'Missing Element In Permutation' do
  describe 'Example Tests' do
    it 'example: [2, 3, 1, 5] to 4' do
      expect(perm_missing_elem([2, 3, 1, 5])).to eq 4
    end
  end
end
