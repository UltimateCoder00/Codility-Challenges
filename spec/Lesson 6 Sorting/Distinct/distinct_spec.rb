require "./lib/Lesson 6 Sorting/Distinct/distinct"

describe 'Distinct' do
  describe 'Example Tests' do
    it 'example: [2, 1, 1, 2, 3, 1] gives 3' do
      expect(distinct([2, 1, 1, 2, 3, 1])).to eq 3
    end
  end

  describe 'Correctness Tests' do
    context 'extreme_empty' do
      it 'empty sequence' do
        expect(distinct([])).to eq 0
      end
    end

    context 'extreme_single' do
      it 'sequence of one element' do
        expect(distinct([1])).to eq 1
        expect(distinct([5])).to eq 1
      end
    end

    context 'extreme_two_elems' do
      it 'sequence of three distinct elements' do
        expect(distinct([1, 2, 3])).to eq 3
      end
    end

    context 'extreme_one_value' do
      it 'sequence of 10 equal elements' do
        expect(distinct([1, 1, 1, 1, 1, 1, 1, 1, 1, 1])).to eq 1
      end
    end

    context 'extreme_negative' do
      it 'sequence of negative elements, length=5' do
        expect(distinct([-50, -40, -30, -20, -10])).to eq 5
      end
    end

    context 'extreme_big_values' do
      it 'sequence with big values, length=5' do
        expect(distinct([1000000, 90000, 80000, 70000, 60000])).to eq 5
      end
    end

    context 'medium1' do
      it 'chaotic sequence of values from [0..1K], length=100' do
        array = [*1..100]
        expect(distinct(array)).to eq 100
      end
    end

    context 'medium2' do
      it 'chaotic sequence of values from [0..1K], length=200' do
        array = [*1..200]
        expect(distinct(array)).to eq 200
      end
    end

    context 'medium3' do
      it 'chaotic sequence of values from [0..10], length=200' do
        array = [*0..10]*18
        expect(distinct(array + [1,2])).to eq 11
      end
    end
  end

  describe 'Perforamnce Tests' do
    context 'large1' do
      it 'chaotic sequence of values from [0..100K], length=10K' do
        array = Array.new(10000) { rand(0..100000) }
        expect(distinct(array)).to be_a Integer
      end
    end

    context 'large_random1' do
      it 'chaotic sequence of values from [-1M..1M], length=100K' do
        array = Array.new(10000) { rand(-1000000..1000000) }
        expect(distinct(array)).to be_a Integer
      end
    end

    context 'large_random2' do
      it 'another chaotic sequence of values from [-1M..1M], length=100K' do
        array = Array.new(10000) { rand(-1000000..1000000) }
        expect(distinct(array)).to be_a Integer
      end
    end
  end
end
