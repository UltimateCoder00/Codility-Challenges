require 'passing_cars'

describe 'Passing Cars' do
  describe 'Example Tests' do
    it 'example: [0,1,0,1,1] gives 5' do
      expect(passing_cars([0,1,0,1,1])).to eq 5
    end
  end
end
