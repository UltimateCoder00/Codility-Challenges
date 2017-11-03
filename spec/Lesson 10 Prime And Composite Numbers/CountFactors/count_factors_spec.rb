require "./lib/Lesson 10 Prime And Composite Numbers/CountFactors/count_factors"

describe 'CountFactors' do

  describe 'Example Tests' do
    it 'Example: 24 to 8' do
      expect(count_factors(24)).to eq 8
    end
  end

  describe 'Correctness Tests' do
    context 'Squares' do
      it 'N=16 to 5' do
        expect(count_factors(16)).to eq 5
      end

      it 'N=36 to 9' do
        expect(count_factors(36)).to eq 9
      end
    end
  end
end
