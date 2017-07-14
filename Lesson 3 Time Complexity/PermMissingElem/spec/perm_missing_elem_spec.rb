require 'perm_missing_elem'

describe 'Missing Element In Permutation' do
  describe 'Example Tests' do
    it 'example: [2, 3, 1, 5] to 4' do
      expect(perm_missing_elem([2, 3, 1, 5])).to eq 4
    end
  end

  describe 'Correctness Tests' do
    context 'empty_and_single - empty list and single element' do
      it '[] to 2' do
        expect(perm_missing_elem([])).to eq 1
      end

      it '[2] to 1' do
        expect(perm_missing_elem([2])).to eq 1
      end
    end

    context 'missing_first_or_last - the first or the last element is missing' do
      it '[3, 4, 2, 5] to 1' do
        expect(perm_missing_elem([3, 4, 2, 5])).to eq 1
      end

      it '[2, 1, 3, 4] to 5' do
        expect(perm_missing_elem([2, 1, 3, 4])).to eq 5
      end
    end

    context 'single - single element' do
      it '[1] to 2' do
        expect(perm_missing_elem([1])).to eq 2
      end

      it '[2] to 1' do
        expect(perm_missing_elem([2])).to eq 1
      end
    end

    context 'double - two elements' do
      it '[1, 3] to 2' do
        expect(perm_missing_elem([1, 3])).to eq 2
      end

      it '[2, 1] to 3' do
        expect(perm_missing_elem([2, 1])).to eq 3
      end

      it '[3, 2] to 1' do
        expect(perm_missing_elem([3, 2])).to eq 1
      end
    end

    context 'simple - simple test' do
      it '[5, 2, 8, 1, 3, 9, 4, 7] to 6' do
        expect(perm_missing_elem([5, 2, 8, 1, 3, 9, 4, 7])).to eq 6
      end
    end
  end
end
