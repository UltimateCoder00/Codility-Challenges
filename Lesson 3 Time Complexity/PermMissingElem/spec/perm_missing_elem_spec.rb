require 'perm_missing_elem'

describe 'Missing Element In Permutation' do
  describe 'Example Tests' do
    it 'example: [2, 3, 1, 5] to 4' do
      expect(perm_missing_elem([2, 3, 1, 5])).to eq 4
    end
  end

  describe 'Correctness Tests' do
    context 'empty_and_single - empty list and single element' do
      it 'example: [] to ' do
        expect(perm_missing_elem([])).to eq 1
      end

      it 'example: [2] to 1' do
        expect(perm_missing_elem([2])).to eq 1
      end
    end

    context 'missing_first_or_last - the first or the last element is missing' do

    end

    context 'single - single element' do

    end

    context 'double - two elements' do

    end

    context 'simple - simple test' do

    end
  end
end
