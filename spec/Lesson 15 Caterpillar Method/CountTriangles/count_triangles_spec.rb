require "./lib/Lesson 15 Caterpillar Method/CountTriangles/count_triangles"

describe 'CountTriangles' do

  describe 'Example Test' do
    it 'Example, Positive Answer, Length=6' do
      expect(count_triangles([10,2,5,1,8,12])).to eq 4
    end
  end

  describe 'Correctness Tests' do
    context 'Extreme_empty' do
      it 'Empty Sequence' do
        expect(count_triangles([])).to eq 0
      end

      it '[5,3,3]' do
        expect(count_triangles([5, 3, 3])).to eq 1
      end
    end

    context 'Extreme_single' do
      it '1-Element Sequence' do
        expect(count_triangles([1])).to eq 0
      end

      it '[5,3,3]' do
        expect(count_triangles([5, 3, 3])).to eq 1
      end
    end

    context 'Extreme_two_elems' do
      it '2-Element Sequence' do
        expect(count_triangles([1,2])).to eq 0
      end

      it '[5,3,3]' do
        expect(count_triangles([5, 3, 3])).to eq 1
      end
    end

    context 'Extreme_arith_overflow' do
      it 'Overflow Test, 3 MAXINTs' do
        expect(count_triangles([1000000000, 1000000000, 1000000000])).to eq 1
      end

      it '[5,3,3]' do
        expect(count_triangles([5, 3, 3])).to eq 1
      end
    end

    context 'Simple' do
      it '[3, 3, 5, 6]' do
        expect(count_triangles([3, 3, 5, 6])).to eq 3
      end
    end

    context 'Medium1' do
      it 'Chaotic Sequence Of Values From [1..100K], Length=30' do
        array = [14567, 45493, 77079, 70552, 73196, 43352, 80003, 53291, 8016,
                45595, 4789, 93297, 94708, 33536, 30941, 76802, 20387, 17847,
                18860, 34701, 62633, 96332, 21084, 95611, 55540, 90116, 81802,
                16043, 64855, 12410]
        expect(count_triangles(array)).to eq 1917
      end
    end

    context 'Medium2' do
      it 'Chaotic Sequence Of Values From [1..1K], Length=50' do
        array = [582, 195, 966, 924, 468, 664, 215, 222, 289, 693, 213, 972, 71,
                  194, 89, 770, 367, 472, 327, 638, 404, 209, 431, 305, 111,
                  824, 681, 665, 883, 395, 380, 423, 405, 669, 7, 465, 536, 346,
                  22, 705, 10, 565, 154, 35, 181, 66, 151, 685, 729, 363]
        expect(count_triangles(array)).to eq 8083
      end
    end
  end

  describe 'Performance Tests' do
    context 'Large' do
      it 'Chaotic Sequence With Values From [1..10], Length=200' do
        array = Array.new(200) { rand(1..10) }
        expect(count_triangles(array)).to be_a Integer
      end
    end

    context 'Large2' do
      it '1 Followed By An Ascending Sequence Of ~1K Elements From [1..2K]' do
        number = 1
        array = [1]

        999.times do
          number += rand(1..2)
          array << number
        end

        expect(count_triangles(array)).to be_a Integer
      end
    end

    context 'Large_random' do
      it 'Chaotic Sequence Of Values From [1..1M], Length=1K' do
        array = Array.new(1000) { rand(1..1000000) }
        expect(count_triangles(array)).to be_a Integer
      end
    end
  end
end
