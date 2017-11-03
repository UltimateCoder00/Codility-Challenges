require "./lib/Lesson 10 Prime And Composite Numbers/CountFactors/count_factors"

describe 'CountFactors' do

  describe 'Example Tests' do
    it 'Example: 24 to 8' do
      expect(count_factors(24)).to eq 8
    end
  end
end
