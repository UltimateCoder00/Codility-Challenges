require "./lib/Lesson 2 Arrays/CyclicRotation/cyclic_rotation"

describe 'CyclicRotation' do
  describe 'Example Tests' do
    it 'example: ([3, 8, 9, 7, 6], 3) to [9, 7, 6, 3, 8]' do
      array = [3, 8, 9, 7, 6]
      k = 3
      expect(cyclic_rotation(array, k)).to eq [9, 7, 6, 3, 8]
    end
  end

  describe 'Correctness Tests' do
    context 'extreme_empty - empty array' do
      it '([], 0) to []' do
        array = []
        k = 0
        expect(cyclic_rotation(array, k)).to eq []
      end

      it '([], 5) to []' do
        array = []
        k = 5
        expect(cyclic_rotation(array, k)).to eq []
      end
    end

    context 'single - one element, 0 <= K <= 5' do
      it '([1], 4) to [1]' do
        array = [1]
        k = 4
        expect(cyclic_rotation(array, k)).to eq [1]
      end

      it '([3], 2) to [3]' do
        array = [3]
        k = 2
        expect(cyclic_rotation(array, k)).to eq [3]
      end

      it '([5], 1) to [5]' do
        array = [5]
        k = 1
        expect(cyclic_rotation(array, k)).to eq [5]
      end
    end

    context 'double - two elements, K <= N' do
      it '([4,67], 1) to [67,4]' do
        array = [4,67]
        k = 1
        expect(cyclic_rotation(array, k)).to eq [67,4]
      end

      it '([2,6], 2) to [2,6]' do
        array = [2,6]
        k = 2
        expect(cyclic_rotation(array, k)).to eq [2,6]
      end
    end

    context 'small1 - small functional tests, K < N' do
      it '([1,2,3,4,5], 3) to [3,4,5,1,2]' do
        array = [1,2,3,4,5]
        k = 3
        expect(cyclic_rotation(array, k)).to eq [3,4,5,1,2]
      end

      it '([34,21,23,54], 3) to [21,23,54,34]' do
        array = [34,21,23,54]
        k = 3
        expect(cyclic_rotation(array, k)).to eq [21,23,54,34]
      end
    end

    context 'small2 - small functional tests, K >= N' do
      it '([1,2,3,4,5], 5) to [1,2,3,4,5]' do
        array = [1,2,3,4,5]
        k = 5
        expect(cyclic_rotation(array, k)).to eq [1,2,3,4,5]
      end

      it '([34,21,23,54], 10) to [23,54,34,21]' do
        array = [34,21,23,54]
        k = 10
        expect(cyclic_rotation(array, k)).to eq [23,54,34,21]
      end

      it '([1,13,9,5], 6) to [9,5,1,13]' do
        array = [1,13,9,5]
        k = 6
        expect(cyclic_rotation(array, k)).to eq [9,5,1,13]
      end
    end

    context 'small_random_all_rotations  - small random sequence, all rotations, N = 15' do
      it '([1,2,3,4,5,6,7,8,9,10,15,20,25,30,35], 15) to [1,2,3,4,5,6,7,8,9,10,15,20,25,30,35]' do
        array = [1,2,3,4,5,6,7,8,9,10,15,20,25,30,35]
        k = 15
        expect(cyclic_rotation(array, k)).to eq [1,2,3,4,5,6,7,8,9,10,15,20,25,30,35]
      end

      it '([1,2,3,4,5,6,7,8,9,10,15,20,25,30,35], 20) to [15,20,25,30,35,1,2,3,4,5,6,7,8,9,10]' do
        array = [1,2,3,4,5,6,7,8,9,10,15,20,25,30,35]
        k = 20
        expect(cyclic_rotation(array, k)).to eq [15,20,25,30,35,1,2,3,4,5,6,7,8,9,10]
      end
    end

    context 'medium_random - medium random sequence, N = 100' do
      it 'Test (Array.new(100) { rand(-1000...1000) }, 5)' do
        array = Array.new(100) { rand(-1000...1000) }
        k = 5

        rotated_array = array.dup
        rotated_array.unshift(rotated_array[-1])
        rotated_array.pop
        rotated_array.unshift(rotated_array[-1])
        rotated_array.pop
        rotated_array.unshift(rotated_array[-1])
        rotated_array.pop
        rotated_array.unshift(rotated_array[-1])
        rotated_array.pop
        rotated_array.unshift(rotated_array[-1])
        rotated_array.pop

        expect(cyclic_rotation(array, k)).to eq rotated_array
      end
    end

    context 'maximal - maximal N and K' do
      it '(Array.new(100) { rand(-1000...1000) }, 100) to Array.new(100) { rand(-1000...1000) }' do
        array = Array.new(100) { rand(-1000...1000) }
        k = 100
        expect(cyclic_rotation(array, k)).to eq array
      end
    end
  end
end
