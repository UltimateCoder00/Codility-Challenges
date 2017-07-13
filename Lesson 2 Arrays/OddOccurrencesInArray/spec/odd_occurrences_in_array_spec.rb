require 'odd_occurrences_in_array'

describe 'Odd Occurrences In Array' do
  describe 'Example Tests' do
    it 'example: [9, 3, 9, 3, 9, 7, 9] to 7' do
      array = [9, 3, 9, 3, 9, 7, 9]
      expect(odd_occurrences_in_array(array)).to eq 7
    end
  end

  describe 'Correctness tests' do
    context 'simple1' do
      it '[2, 5, 8, 2, 5] to 8' do
        array = [2, 5, 8, 2, 5]
        expect(odd_occurrences_in_array(array)).to eq 8
      end
    end

    context 'simple1' do
      it '[13, 1, 55, 23, 67, 13, 55, 432, 1, 23, 67] to 3' do
        array = [13, 1, 55, 23, 67, 13, 55, 432, 1, 23, 67]
        expect(odd_occurrences_in_array(array)).to eq 432
      end
    end
  end
end
