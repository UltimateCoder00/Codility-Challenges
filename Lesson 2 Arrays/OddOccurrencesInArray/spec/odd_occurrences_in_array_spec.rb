require 'odd_occurrences_in_array'

describe 'Odd Occurrences In Array' do
  describe 'Example Tests' do
    it 'example: [9, 3, 9, 3, 9, 7, 9] to 7' do
      array = [9, 3, 9, 3, 9, 7, 9]
      expect(odd_occurrences_in_array(array)).to eq 7
    end
  end
end
