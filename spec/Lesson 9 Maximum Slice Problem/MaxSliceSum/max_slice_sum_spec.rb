require "./lib/Lesson 9 Maximum Slice Problem/MaxSliceSum/max_slice_sum"

describe 'MaxSliceSum' do

  describe 'Example Tests' do
    it 'Example: [3,2,-6,4,0] to 5' do
      expect(max_slice_sum([3,2,-6,4,0])).to eq 5
    end
  end

  describe 'Correctness Tests' do
    context 'One_element' do
      it '[-10] to -10' do
        expect(max_slice_sum([-10])).to eq -10
      end

      it '[0] to 0' do
        expect(max_slice_sum([0])).to eq 0
      end

      it '[10] to 10' do
        expect(max_slice_sum([10])).to eq 10
      end
    end

    context 'Two_elements' do
      it '[-2,-2] to -2' do
        expect(max_slice_sum([-2,-2])).to eq -2
      end

      it '[-2,1] to 1' do
        expect(max_slice_sum([-2,1])).to eq 1
      end

      it '[-2,3] to 3' do
        expect(max_slice_sum([-2,3])).to eq 3
      end

      it '[1,-2] to 1' do
        expect(max_slice_sum([1,-2])).to eq 1
      end

      it '[1,1] to 2' do
        expect(max_slice_sum([1,1])).to eq 2
      end

      it '[1,3] to 4' do
        expect(max_slice_sum([1,3])).to eq 4
      end

      it '[3,-2] to 3' do
        expect(max_slice_sum([3,-2])).to eq 3
      end

      it '[3,1] to 4' do
        expect(max_slice_sum([3,1])).to eq 4
      end

      it '[3,3] to 6' do
        expect(max_slice_sum([3,3])).to eq 6
      end
    end

    context 'Simple' do
      it '[1, 3, -5, 3, 7, 14, 29] to 53' do
        expect(max_slice_sum([1, 3, -5, 3, 7, 14, 29])).to eq 53
      end
    end

    context 'Extreme_minimum' do
      it '[-1000000] to -1000000' do
        expect(max_slice_sum([-1000000])).to eq -1000000
      end
    end

    context 'Fifty_random' do
      it '[.....] to 2662' do
        array = [-191, 358, -145, 41, -893, 545, -770, -560, 495, -488, 565,
                  568, -353, -782, 719, 727, -269, 16, 432, 98, 934, -795,
                  744, -966, -654, -973, -529, -588, 129, 565, 42, -11, 338,
                  525, 190, -855, 189, -434, 272, 49, 561, -872, 898, -859,
                  -595, -852, -591, -103, -641, -480]
        expect(max_slice_sum(array)).to eq 2662
      end
    end

    context 'Neg_const' do
      it '[.....] to -11' do
        array = [-11, -11, -11, -11, -11, -11, -11, -11, -11, -11, -11, -11,
                  -11, -11, -11, -11, -11, -11, -11, -11, -11, -11, -11, -11,
                  -11, -11, -11, -11, -11, -11, -11, -11, -11, -11, -11, -11,
                  -11, -11, -11, -11, -11, -11, -11, -11, -11, -11, -11, -11,
                  -11, -11]
        expect(max_slice_sum(array)).to eq -11
      end
    end

    context 'Pos_const' do
      it '[.....] to 550' do
        array = [11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11,
                  11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11,
                  11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11,
                  11, 11, 11, 11, 11]
        expect(max_slice_sum(array)).to eq 550
      end
    end

    describe 'Performance Tests' do
      context 'Growing_saw' do
        it '[.....] to 252' do
          array = [0, 1, 3, 2, 1, 0, -1, 0, 1, 2, 4, 3, 2, 1, 0, -1, -2, 0, 1,
                    2, 3, 5, 4, 3, 2, 1, 0, -1, -2, -3, 0, 1, 2, 3, 4, 6, 5, 4,
                    3, 2, 1, 0, -1, -2, -3, -4, 0, 1, 2, 3, 4, 5, 7, 6, 5, 4,
                    3, 2, 1, 0, -1, -2, -3, -4, -5, 0, 1, 2, 3, 4, 5, 6, 8, 7,
                    6, 5, 4, 3, 2, 1, 0, -1, -2, -3, -4, -5, -6, 0, 1, 2, 3, 4,
                    5, 6, 7, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0, -1, -2, -3, -4, -5,
                    -6, -7, 0, 1, 2, 3, 4, 5, 6, 7, 8, 10, 9, 8, 7, 6, 5, 4, 3,
                    2, 1, 0, -1, -2, -3, -4, -5, -6, -7, -8]
          expect(max_slice_sum(array)).to eq 252
        end
      end
    end
  end
end
