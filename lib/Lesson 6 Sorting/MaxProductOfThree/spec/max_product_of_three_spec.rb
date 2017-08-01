require 'max_product_of_three'

describe 'Max Product of Three' do
  describe 'Example Tests' do
    it 'example: [-3, 1, 2, -2, 5, 6] gives 60' do
      expect(max_product_of_three([-3, 1, 2, -2, 5, 6])).to eq 60
    end
  end
end
