require 'passing_cars'

describe 'Passing Cars' do
  describe 'Example Tests' do
    it 'example: [0,1,0,1,1] gives 5' do
      expect(passing_cars([0,1,0,1,1])).to eq 5
    end
  end

  describe 'Correctness Tests' do
    context 'single' do
      it 'single element' do
        expect(passing_cars([0])).to eq 0
        expect(passing_cars([1])).to eq 0
      end
    end

    context 'double' do
      it 'two elements' do
        expect(passing_cars([0,0])).to eq 0
        expect(passing_cars([0,1])).to eq 1
        expect(passing_cars([1,0])).to eq 0
        expect(passing_cars([1,1])).to eq 0
      end
    end

    context 'simple' do
      it 'simple test' do
        expect(passing_cars([0,1,1,0,1,1])).to eq 6
      end
    end

    context 'small_random' do
      it 'random, length = 100' do
        array = [0]
        array += [1]*97
        array += [0,1]
        expect(passing_cars(array)).to eq 99
      end
    end

    context 'small_random2' do
      it 'random, length = 1000' do
        array = [0]
        array += [1]*997
        array += [0,1]
        expect(passing_cars(array)).to eq 999
      end
    end
  end
end
