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

    context 'Three_elements' do
      it '[-2,-2,-2] to -2' do
        expect(max_slice_sum([-2,-2,-2])).to eq -2
      end

      it '[-2,-2,1] to 1' do
        expect(max_slice_sum([-2,-2,1])).to eq 1
      end

      it '[-2,-2,3] to 3' do
        expect(max_slice_sum([-2,-2,3])).to eq 3
      end

      it '[-2,1,-2] to 1' do
        expect(max_slice_sum([-2,1,-2])).to eq 1
      end

      it '[-2,1,1] to 2' do
        expect(max_slice_sum([-2,1,1])).to eq 2
      end

      it '[-2,1,3] to 4' do
        expect(max_slice_sum([-2,1,3])).to eq 4
      end

      it '[-2,3,-2] to 3' do
        expect(max_slice_sum([-2,3,-2])).to eq 3
      end

      it '[-2,3,1] to 4' do
        expect(max_slice_sum([-2,3,1])).to eq 4
      end

      it '[-2,3,3] to 6' do
        expect(max_slice_sum([-2,3,3])).to eq 6
      end

      it '[1,-2,-2] to 1' do
        expect(max_slice_sum([1,-2,-2])).to eq 1
      end

      it '[1,-2,1] to 2' do
        expect(max_slice_sum([1,-2,1])).to eq 1
      end

      it '[1,-2,3] to 1' do
        expect(max_slice_sum([1,-2,3])).to eq 3
      end

      it '[1,1,-2] to 2' do
        expect(max_slice_sum([1,1,-2])).to eq 2
      end

      it '[1,1,1] to 3' do
        expect(max_slice_sum([1,1,1])).to eq 3
      end

      it '[1,1,3] to 5' do
        expect(max_slice_sum([1,1,3])).to eq 5
      end

      it '[1,3,-2] to 4' do
        expect(max_slice_sum([1,3,-2])).to eq 4
      end

      it '[1,3,1] to 5' do
        expect(max_slice_sum([1,3,1])).to eq 5
      end

      it '[1,3,3] to 7' do
        expect(max_slice_sum([1,3,3])).to eq 7
      end

      it '[3,-2,-2] to 3' do
        expect(max_slice_sum([3,-2,-2])).to eq 3
      end

      it '[3,-2,1] to 3' do
        expect(max_slice_sum([3,-2,1])).to eq 3
      end

      it '[3,-2,3] to 3' do
        expect(max_slice_sum([3,-2,3])).to eq 4
      end

      it '[3,1,-2] to 4' do
        expect(max_slice_sum([3,1,-2])).to eq 4
      end

      it '[3,1,1] to 5' do
        expect(max_slice_sum([3,1,1])).to eq 5
      end

      it '[3,1,3] to 7' do
        expect(max_slice_sum([3,1,3])).to eq 7
      end

      it '[3,3,-2] to 6' do
        expect(max_slice_sum([3,3,-2])).to eq 6
      end

      it '[3,3,1] to 7' do
        expect(max_slice_sum([3,3,1])).to eq 7
      end

      it '[3,3,3] to 9' do
        expect(max_slice_sum([3,3,3])).to eq 9
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
      context 'High_low_1Kgarbage' do
        it 'High Low 1KGarbage' do
          array = [1000, -1001] + [1]*999
          expect(max_slice_sum(array)).to be_a Integer
        end
      end

      context '1Kgarbage_high_low' do
        it '1KGarbage High Low' do
          array = [1]*999 + [1000, -1001]
          expect(max_slice_sum(array)).to be_a Integer
        end
      end

      context 'Growing_saw' do
        it 'Growing Saw' do
          array = Array.new(140) { rand(-8..10) }
          expect(max_slice_sum(array)).to be_a Integer
        end
      end

      context 'Blocks' do
        it 'Blocks' do
          array = Array.new(125251) { rand(1..501) }
          expect(max_slice_sum(array)).to be_a Integer
        end
      end

      context 'Growing_negative' do
        it '[.....] to ...' do

        end
      end
    end
  end
end
