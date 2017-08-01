require 'max_product_of_three'

describe 'Max Product of Three' do
  describe 'Example Tests' do
    it 'example: [-3, 1, 2, -2, 5, 6] gives 60' do
      expect(max_product_of_three([-3, 1, 2, -2, 5, 6])).to eq 60
    end
  end

  describe 'Correctness Tests' do
    context 'one_triple' do
      it 'three elements' do
        expect(max_product_of_three([1, 2, 3])).to eq 6
        expect(max_product_of_three([2, 2, 2])).to eq 8
        expect(max_product_of_three([10, 9, 8])).to eq 720
      end
    end

    context 'simple1' do
      it 'simple tests' do
        expect(max_product_of_three([1, 2, 3, 4])).to eq 24
        expect(max_product_of_three([2, 2, 2, 2, 2])).to eq 8
        expect(max_product_of_three([4, 6, 2, 8, 10, 1])).to eq 480
        expect(max_product_of_three([9, 8, 7, 6, 5, 4, 3])).to eq 504
      end
    end

    context 'simple2' do
      it 'simple tests' do

      end
    end

    context 'small_random' do
      it 'random small, length = 100' do

      end
    end
  end
end
