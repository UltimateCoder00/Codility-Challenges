require "./lib/Lesson 17 Dynamic Programming/MinAbsSum/min_abs_sum"

describe 'MinAbsSum' do

  describe 'Example Test' do
    it 'Example' do
      expect(min_abs_sum([1,5,2,-2])).to eq 0
    end
  end

  describe 'Correctness Test' do
    context 'Simple1' do
      it 'Simple1 1' do
        expect(min_abs_sum([1,5,-2,5,2,3])).to eq 0
      end

      it 'Simple1 2' do
        expect(min_abs_sum([2,2,1])).to eq 1
      end

      it 'Simple1 3' do
        expect(min_abs_sum([3,1])).to eq 2
      end
    end

    context 'Simple2' do
      it 'Simple2 1' do
        expect(min_abs_sum([2,4,1])).to eq 1
      end

      it 'Simple2 2' do
        expect(min_abs_sum([10,1,1,1,1,1,1])).to eq 4
      end
    end

    context 'Simple3' do
      it 'Simple3 1' do
        expect(min_abs_sum([3,3,3,4,5])).to eq 0
      end

      it 'Simple3 2' do
        expect(min_abs_sum([2,2,1])).to eq 1
      end

      it 'Simple3 3' do
        expect(min_abs_sum([7,2])).to eq 5
      end
    end

    context 'Range' do
      it 'range 2..20' do
        expect(min_abs_sum([2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20])).to eq 1
      end

      it 'range 10..14' do
        expect(min_abs_sum([10,11,12,13,14])).to eq 6
      end
    end
  end
end
