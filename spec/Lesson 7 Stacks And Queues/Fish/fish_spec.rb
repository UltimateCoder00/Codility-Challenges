require "./lib/Lesson 7 Stacks And Queues/Fish/fish"

describe 'Fish' do
  describe 'Example Test' do
    it 'Example' do
      expect(fish([4,3,2,1,5], [0,1,0,0,0])).to eq 2
    end
  end

  describe 'Correctness Tests' do
    context 'Extreme_small' do
      it '1 Fish 1' do
        expect(fish([1], [0])).to eq 1
      end

      it '1 Fish 2' do
        expect(fish([1000000000], [1])).to eq 1
      end

      it '2 Fishes 1' do
        expect(fish([1000000000,999999999], [0,0])).to eq 2
      end

      it '2 Fishes 2' do
        expect(fish([1000000000,999999999], [1,0])).to eq 1
      end

      it '2 Fishes 3' do
        expect(fish([1000000000,999999999], [0,1])).to eq 2
      end

      it '2 Fishes 4' do
        expect(fish([999999999,1000000000], [1,0])).to eq 1
      end
    end

    context 'Simple1' do
      it 'Simple Test' do
        expect(fish([8,6,5,3,2,4,7], [1,1,1,0,0,1,1])).to eq 5
      end
    end
  end
end
