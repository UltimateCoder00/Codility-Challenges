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
  end
end
