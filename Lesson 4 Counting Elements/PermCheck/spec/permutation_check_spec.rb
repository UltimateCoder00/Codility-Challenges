require 'permutation_check'

describe 'Permutation Check' do
  describe 'Example Tests' do
    context 'example1' do
      it 'the first example test - [4, 1, 3, 2]' do
        expect(permutation_check([4, 1, 3, 2])).to eq 1
      end
    end

    context 'example2' do
      it 'the second example test - [4, 1, 3]' do
        expect(permutation_check([4, 1, 3])).to eq 0
      end
    end
  end
end
