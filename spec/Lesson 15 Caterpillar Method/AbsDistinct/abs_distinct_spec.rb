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
  end
end
