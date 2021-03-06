require "./lib/Lesson 15 Caterpillar Method/AbsDistinct/abs_distinct"

describe 'AbsDistinct' do

  describe 'Example Tests' do
    it 'Example: [-5,-3,-1,0,3,6] to 5' do
      expect(abs_distinct([-5,-3,-1,0,3,6])).to eq 5
    end
  end

  describe 'Correctness Tests' do
    context 'One_element' do
      it '[-10] to 1' do
        expect(abs_distinct([-10])).to eq 1
      end

      it '[0] to 1' do
        expect(abs_distinct([0])).to eq 1
      end

      it '[10] to 1' do
        expect(abs_distinct([10])).to eq 1
      end
    end

    context 'Two_elements' do
      it '[-2,-2] to 1' do
        expect(abs_distinct([-2,-2])).to eq 1
      end

      it '[-2,1] to 2' do
        expect(abs_distinct([-2,1])).to eq 2
      end

      it '[-2,3] to 2' do
        expect(abs_distinct([-2,3])).to eq 2
      end

      it '[-2,1] to 2' do
        expect(abs_distinct([-2,1])).to eq 2
      end

      it '[1,1] to 1' do
        expect(abs_distinct([1,1])).to eq 1
      end

      it '[1,3] to 2' do
        expect(abs_distinct([1,3])).to eq 2
      end

      it '[-2,3] to 2' do
        expect(abs_distinct([-2,3])).to eq 2
      end

      it '[1,3] to 2' do
        expect(abs_distinct([1,3])).to eq 2
      end

      it '[3,3] to 1' do
        expect(abs_distinct([3,3])).to eq 1
      end
    end

    context 'Same_elements' do
      it '[-100,...,-100] to 1' do
        array = [-100, -100, -100, -100, -100, -100, -100, -100, -100, -100,
                  -100, -100, -100, -100, -100, -100, -100, -100, -100, -100,
                  -100, -100, -100, -100, -100, -100, -100, -100, -100, -100,
                  -100, -100, -100, -100, -100, -100, -100, -100, -100, -100,
                  -100, -100, -100, -100, -100, -100, -100, -100, -100, -100,
                  -100, -100, -100, -100, -100, -100, -100, -100, -100, -100,
                  -100, -100, -100, -100, -100, -100, -100, -100, -100, -100,
                  -100, -100, -100, -100, -100, -100, -100, -100, -100, -100,
                  -100, -100, -100, -100, -100, -100, -100, -100, -100, -100,
                  -100, -100, -100, -100, -100, -100, -100, -100, -100, -100]
        expect(abs_distinct(array)).to eq 1
      end

      it '[0,...,0] to 1' do
        array = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
        expect(abs_distinct(array)).to eq 1
      end

      it '[100,...,100] to 1' do
        array = [100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100,
                  100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100,
                  100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100,
                  100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100,
                  100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100,
                  100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100,
                  100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100,
                  100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100,
                  100, 100, 100, 100]
        expect(abs_distinct(array)).to eq 1
      end
    end

    context 'Simple' do
      it '[-5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5] to 6' do
        array = [-5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5]
        expect(abs_distinct(array)).to eq 6
      end
    end

    context 'Simple_no_zero' do
      it '[-5, -4, -3, -2, -1, 1, 2, 3, 4, 5] to 5' do
        array = [-5, -4, -3, -2, -1, 1, 2, 3, 4, 5]
        expect(abs_distinct(array)).to eq 5
      end
    end

    context 'Simple_no_same' do
      it '[-5, -4, -3, -2, -1, 6, 7, 8, 9] to 9' do
        array = [-5, -4, -3, -2, -1, 6, 7, 8, 9]
        expect(abs_distinct(array)).to eq 9
      end
    end

    context 'Simple_no_negative' do
      it '[0, 1, 2, 3, 4, 5, 6, 7, 100, 100, 200, 3000] to 11' do
        array = [0, 1, 2, 3, 4, 5, 6, 7, 100, 100, 200, 3000]
        expect(abs_distinct(array)).to eq 11
      end
    end

    context 'Simple_no_positive' do
      it '[-100, -5, -4, -3, -2, -1, -1, 0, 0] to 7' do
        array = [-100, -5, -4, -3, -2, -1, -1, 0, 0]
        expect(abs_distinct(array)).to eq 7
      end
    end

    context 'Arith_overlow' do
      it '[-2147483648, 0] to 2' do
        expect(abs_distinct([-2147483648, 0])).to eq 2
      end

      it '[-2147483648, -1, 0, 1] to 3' do
        expect(abs_distinct([-2147483648, -1, 0, 1])).to eq 3
      end

      it '[-2147483648, -1, 0, 1, 2147483647] to 4' do
        expect(abs_distinct([-2147483648, -1, 0, 1, 2147483647])).to eq 4
      end
    end

    context 'Medium_chaotic1' do
      it '[-48,...,50] to 43' do
        array = [-48, -47, -43, -42, -42, -41, -41, -41, -40, -40, -40, -38,
                  -37, -37, -35, -35, -35, -32, -32, -32, -29, -28, -26, -26,
                  -25, -22, -20, -20, -18, -17, -17, -16, -15, -14, -14, -13,
                  -13, -12, -11, -11, -9, -9, -7, -4, -4, -3, -2, -1, 1, 1, 2,
                  3, 5, 5, 6, 6, 10, 11, 11, 15, 16, 16, 18, 20, 21, 21, 22, 22,
                  24, 27, 27, 28, 30, 30, 30, 30, 30, 30, 32, 32, 33, 33, 33,
                  35, 35, 37, 37, 38, 38, 39, 40, 40, 41, 42, 44, 46, 46, 49,
                  49, 50]
        expect(abs_distinct(array)).to eq 43
      end
    end

    context 'Medium_chaotic2' do
      it '[-50,...,50] to 51' do
        array = [-50, -50, -49, -49, -49, -48, -48, -48, -48, -47, -46, -46,
                  -46, -45, -45, -45, -45, -44, -44, -43, -43, -43, -43, -42,
                  -42, -42, -42, -42, -41, -41, -41, -41, -40, -39, -39, -39,
                  -39, -39, -38, -38, -38, -38, -38, -38, -38, -37, -37, -37,
                  -36, -36, -36, -36, -35, -35, -35, -35, -35, -35, -35, -34,
                  -34, -34, -34, -33, -33, -33, -32, -32, -31, -31, -30, -30,
                  -30, -30, -30, -29, -29, -28, -28, -28, -28, -27, -27, -27,
                  -27, -27, -26, -26, -25, -25, -23, -22, -22, -21, -21, -21,
                  -21, -20, -20, -20, -20, -20, -19, -19, -19, -18, -18, -17,
                  -17, -16, -16, -15, -15, -15, -14, -14, -14, -14, -13, -12,
                  -12, -12, -11, -11, -10, -10, -10, -10, -10, -9, -8, -7, -6,
                  -6, -6, -6, -6, -6, -5, -4, -3, -3, -3, -3, -2, -2, -2, -2,
                  -2, -1, 0, 0, 0, 0, 1, 1, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 4,
                  5, 6, 6, 7, 7, 7, 8, 8, 9, 9, 9, 9, 10, 11, 11, 11, 12, 13,
                  13, 13, 13, 14, 14, 15, 15, 15, 16, 17, 18, 18, 18, 18, 18,
                  18, 19, 19, 19, 20, 20, 21, 22, 22, 23, 23, 24, 24, 24, 24,
                  24, 24, 24, 25, 26, 26, 26, 26, 27, 27, 27, 27, 27, 28, 28,
                  28, 29, 30, 30, 30, 30, 30, 30, 30, 31, 31, 31, 31, 31, 31,
                  32, 32, 33, 33, 34, 34, 34, 35, 35, 35, 35, 35, 35, 36, 36,
                  36, 36, 36, 37, 37, 38, 38, 38, 38, 38, 39, 39, 40, 40, 41,
                  41, 41, 42, 42, 42, 42, 43, 43, 44, 44, 44, 45, 46, 46, 47,
                  47, 47, 47, 47, 48, 48, 48, 50, 50]
        expect(abs_distinct(array)).to eq 51
      end
    end
  end

  describe 'Performance Tests' do
    context 'Long_sequence_no_negative' do
      it '[...] to x' do
        array = Array.new(50053) { rand(1..9999) }
        expect(abs_distinct(array)).to be_a Integer
      end
    end

    context 'Long_sequence_no_positive' do
      it '[...] to x' do
        array = Array.new(39902) { rand(-8000..-2) }
        expect(abs_distinct(array)).to be_a Integer
      end
    end

    context 'Long_sequence' do
      it '[...] to x' do
        array = Array.new(90124) { rand(-10000..10000) }
        expect(abs_distinct(array)).to be_a Integer
      end
    end
  end
end
