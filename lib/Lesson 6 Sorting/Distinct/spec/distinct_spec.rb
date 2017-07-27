require 'distinct'

describe 'Distinct' do
  describe 'Example Tests' do
    it 'example: [2, 1, 1, 2, 3, 1] gives 3' do
      expect(distinct([2, 1, 1, 2, 3, 1])).to eq 3
    end
  end
end
