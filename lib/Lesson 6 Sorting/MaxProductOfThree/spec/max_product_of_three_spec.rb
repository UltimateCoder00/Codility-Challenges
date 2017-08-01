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
        expect(max_product_of_three([1, 2, 3, -4])).to eq 6
        expect(max_product_of_three([2, -2, 2, -2, -2])).to eq 8
        expect(max_product_of_three([4, 6, 2, 8, -10, 1])).to eq 192
        expect(max_product_of_three([-1, -7, -10, -4, -12])).to eq -28

        array = [-20, -14, -14, -11, -8, -4, -2, -2, -1, -1]
        expect(max_product_of_three(array)).to eq -2
      end
    end

    context 'small_random' do
      it 'random small, length = 100' do
        array = [47, 417, 356, 641, 830, -77, -388, 636, -276, 148, 767,
                -907, 481, -322, 207, -304, -171, -273, 609, 178, -609,
                762, -619, -352, -938, 146, -698, -92, 344, 196, 199, 408,
                72, -93, 628, -981, -91, 576, 671, 869, -644, -487, 951,
                503, 731, -518, 319, -665, -408, 363, 529, -414, 837, 738,
                497, 614, -300, -298, -348, 969, 39, 861, 351, 120, -818,
                -46, 251, -771, -179, -321, 90, -327, -697, -118, 796, -102,
                204, 812, 217, -229, 829, 531, -914, 435, -763, 207, 724,
                759, -347, 285, 577, -951, 99, 218, 550, 365, 43, -454, 494, -101]
        expect(max_product_of_three(array)).to eq 904010139
      end
    end
  end

  describe 'Performance Tests' do
    context 'medium_range' do
      it '-1000, -999, ... 1000, length = ~1,000' do
        array = Array.new(1000) { rand(-1000..1000) }
        expect(max_product_of_three(array)).to be_a Integer
      end
    end

    context 'medium_random' do
      it 'random medium, length = ~10,000' do
        array = Array.new(10000) { rand(-1000..1000) }
        expect(max_product_of_three(array)).to be_a Integer
      end
    end

    context 'large_random' do
      it 'random large, length = ~100,000' do
        array = Array.new(100000) { rand(-1000..1000) }
        expect(max_product_of_three(array)).to be_a Integer
      end
    end

    context 'large_range' do
      it '2000 * (-10..10) + [-1000, 500, -1]' do
        array = Array.new(2000) { rand(-10..10) }
        array += [-1000, 500, -1]
        expect(max_product_of_three(array)).to be_a Integer
      end
    end

    context 'extreme_large' do
      it '(-2, .., -2, 1, .., 1) and (MAX_INT)..(MAX_INT), length = ~100,000' do
        array = Array.new(99998) { rand(-2..1) }
        array += [-1000, 1000]
        expect(max_product_of_three(array)).to be_a Integer
      end
    end
  end
end
