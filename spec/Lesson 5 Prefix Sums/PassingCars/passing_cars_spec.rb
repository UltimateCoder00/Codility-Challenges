require "./lib/Lesson 5 Prefix Sums/PassingCars/passing_cars"

describe 'PassingCars' do
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

  describe 'Performance Tests' do
    context 'medium_random' do
      it 'random, length = ~10,000' do
        array = Array.new(10000) { rand(2) }
        expect(passing_cars(array)).to be_a Integer
      end
    end

    context 'large_random' do
      it 'random, length = ~100,000' do
        array = Array.new(100000) { rand(2) }
        expect(passing_cars(array)).to be_a Integer
      end
    end

    context 'large_big_answer' do
      it '0..01..1, length = ~100,000' do
        array = [0]
        array += [0]*49999
        array += [1]*50000
        expect(passing_cars(array)).to be_a Integer
      end
    end

    context 'large_alternate' do
      it '0101..01, length = ~100,000' do
        array = [0,1]*50000
        expect(passing_cars(array)).to be_a Integer
        array = [1,0]*50000
        expect(passing_cars(array)).to be_a Integer
      end
    end

    context 'large_extreme' do
      it 'large test with all 1s/0s, length = ~100,000' do
        array = [0]*100000
        expect(passing_cars(array)).to be_a Integer
        array = [1]*100000
        expect(passing_cars(array)).to be_a Integer
      end
    end
  end
end
