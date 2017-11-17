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
  end
end
