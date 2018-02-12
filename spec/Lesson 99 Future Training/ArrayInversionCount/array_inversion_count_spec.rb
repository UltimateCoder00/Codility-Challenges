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
  end
end
