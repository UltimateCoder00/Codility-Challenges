require "./lib/Lesson 15 Caterpillar Method/AbsDistinct/abs_distinct"

describe 'abs_distinct' do

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

    context 'Two_element' do
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
  end
end
