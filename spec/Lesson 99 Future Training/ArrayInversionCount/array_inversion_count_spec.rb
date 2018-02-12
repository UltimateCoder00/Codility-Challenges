require "./lib/Lesson 99 Future Training/ArrayInversionCount/array_inversion_count"

describe 'ArrayInversionCount' do

  describe 'Example Test' do
    it 'Example' do
      expect(array_inversion_count([-1,6,3,4,7,4])).to eq 4
    end
  end

  describe 'Correctness Tests' do
    context 'Simple1' do
      it 'Simple' do
        expect(array_inversion_count([5,4,3,2,1])).to eq 10
      end
    end

    context 'Simple2' do
      it 'Simple' do
        expect(array_inversion_count([10,2,1,4,1,-1,19,1])).to eq 16
      end
    end

    context 'Simple3' do
      it 'Simple' do
        array = [181,1,1,2,4,1,1,4,6,1,2]
        expect(array_inversion_count(array)).to eq 21
      end
    end

    context 'Extreme_0_inv' do
      it '[0]' do
        array = [0]
        expect(array_inversion_count(array)).to eq 0
      end

      it '[]' do
        array = []
        expect(array_inversion_count(array)).to eq 0
      end

      it '[1,2,3]' do
        array = [1,2,3]
        expect(array_inversion_count(array)).to eq 0
      end

      it '[1,1,1]' do
        array = [1,1,1]
        expect(array_inversion_count(array)).to eq 0
      end
    end
  end
end
