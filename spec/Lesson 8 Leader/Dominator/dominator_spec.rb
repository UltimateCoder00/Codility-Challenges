require "./lib/Lesson 8 Leader/Dominator/dominator"

describe 'Dominator' do

  describe 'Example Tests' do
    it 'Example: [3,4,3,2,3,-1,3,3] to 3' do
      expect(dominator([3,4,3,2,3,-1,3,3])).to eq 0
    end
  end

  describe 'Correctness Tests' do
    context 'Small_nondominator' do
      it 'All Different Elements' do
        array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15,
                16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28,
                29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42,
                43, 44, 45, 46, 47, 48, 49]
        expect(dominator(array)).to eq -1
      end

      it 'All The Same Elements' do
        array = [50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50,
                50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50,
                50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50,
                50, 50, 50, 50, 50, 50, 50, 50]
        expect(dominator(array)).to eq 0
      end
    end

    context 'Small_half_positions' do
      it 'Half Elements The Same' do
        array = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2]
        expect(dominator(array)).to eq -1
      end

      it 'Half + 1 Elements The Same' do
        array = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2]
        expect(dominator(array)).to eq 10
      end
    end

    context 'Small' do
      it 'Small Test 1' do
        array = [1, 2, 1]
        expect(dominator(array)).to eq 0
      end

      it 'Small Test 2' do
        array = [-2147483648, 2147483647, 999999, 1, 999999, 2, 999999, 3, 999999,
                999999, 999999, 999999, 999999, 999999, 999999, -2147483648]
        expect(dominator(array)).to eq 2
      end
    end

    context 'Small_pyramid ' do
      it 'Decreasing And Plateau, Small' do
        array = [-1, -2, -3, -4, -5, -6, -7, -8, -9, -10, -11, -12, -13, -14, -15,
                -16, -17, -18, -19, -20, -21, -22, -23, -24, -25, -26, -27, -28,
                -29, -30, -31, -32, -33, -34, -35, -36, -37, -38, -39, -40, -41,
                -42, -43, -44, -45, -46, -47, -48, -49, -50, -51, -52, -53, -54,
                -55, -56, -57, -58, -59, -60, -61, -62, -63, -64, -65, -66, -67,
                -68, -69, -70, -71, -72, -73, -74, -75, -76, -77, -78, -79, -80,
                -81, -82, -83, -84, -85, -86, -87, -88, -89, -90, -91, -92, -93,
                -94, -95, -96, -97, -98, -99, -100, 10000, 10000, 10000, 10000,
                10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000,
                10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000,
                10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000,
                10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000,
                10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000,
                10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000,
                10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000,
                10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000,
                10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000,
                10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000,
                10000, 10000, 10000, 10000, 10000, 10000, 10000]
        expect(dominator(array)).to eq 100
      end
    end

    context 'Extreme_empty_and_single_item' do
      it 'Empty Array' do
        array = []
        expect(dominator(array)).to eq -1
      end

      it 'Single Element Array' do
        array = [2147483647]
        expect(dominator(array)).to eq 0
      end
    end

    context 'Extreme_half1' do
      it 'Array With Exactly N/2 Values 1' do
        array = [2, 1, 1, 3]
        expect(dominator(array)).to eq -1
      end

      it 'N Even + [0,0,1,1,1]' do
        array = [0, 0, 1, 1, 1]
        expect(dominator(array)).to eq 2
      end
    end

    context 'Extreme_half2' do
      it 'Array With Exactly Floor(N/2) Values 1' do
        array = [2, 1, 1, 3, 4]
        expect(dominator(array)).to eq -1
      end

      it 'N Odd + [0,0,1,1,1]' do
        array = [0, 0, 1, 1, 1]
        expect(dominator(array)).to eq 2
      end
    end

    context 'Extreme_half3' do
      it 'Array With Exactly Ceil(N/2) Values 1 + [0,0,1,1,1]' do
        array = [2, 1, 1, 1, 3]
        expect(dominator(array)).to eq 1
      end

      it 'N Odd + [0,0,1,1,1]' do
        array = [0, 0, 1, 1, 1]
        expect(dominator(array)).to eq 2
      end
    end
  end

  describe 'Correctness Tests' do
    context 'Medium_pyramid' do
      it 'Decreasing And Plateau, Medium' do
        array = Array.new(10001) { rand(-2147483647..2147483647) }
        expect(dominator(array)).to be_a Integer
      end
    end

    context 'Large_pyramid' do
      it 'Decreasing And Plateau, Large' do
        array = Array.new(999999) { rand(-2147483647..2147483647) }
        expect(dominator(array)).to be_a Integer
      end
    end

    context 'Medium_random' do
      it 'Random Test With Dominator, N = 10,000' do
        array = Array.new(10000) { rand(-2147483647..2147483647) }
        expect(dominator(array)).to be_a Integer
      end
    end

    context 'Large_random' do
      it 'Random Test With Dominator, N = 100,000' do
        array = Array.new(999999) { rand(-2147483647..2147483647) }
        expect(dominator(array)).to be_a Integer
      end
    end
  end
end
