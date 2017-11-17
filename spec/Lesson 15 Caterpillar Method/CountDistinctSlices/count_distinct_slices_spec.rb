require "./lib/Lesson 15 Caterpillar Method/CountDistinctSlices/count_distinct_slices"

describe 'CountDistinctSlices' do

  describe 'Example Test' do
    it 'Example' do
      expect(count_distinct_slices(6,[3,4,5,5,2])).to eq 9
    end
  end

  describe 'Correctness Tests' do
    context 'Single' do
      it 'Simple Element 1' do
        expect(count_distinct_slices(100000,[100000])).to eq 1
      end

      it 'Simple Element 2' do
        expect(count_distinct_slices(100000,[0])).to eq 1
      end

      it 'Simple Element 3' do
        expect(count_distinct_slices(0,[0])).to eq 1
      end
    end

    context 'Double' do
      it 'Double Elements 1' do
        expect(count_distinct_slices(100000,[1, 1])).to eq 2
      end

      it 'Double Elements 2' do
        expect(count_distinct_slices(100000,[100000, 10000])).to eq 3
      end

      it 'Double Elements 3' do
        expect(count_distinct_slices(100000,[100000, 100000])).to eq 2
      end
    end

    context 'Simple1' do
      it 'First Simple Test' do
        expect(count_distinct_slices(10000,[1, 3, 4, 1, 2, 1, 3, 2, 1])).to eq 24
      end
    end

    context 'Simple2' do
      it 'Second Simple Test' do
        expect(count_distinct_slices(100,[2, 3, 3, 3, 2, 4, 1, 2, 5, 1, 4, 5, 1, 4])).to eq 37
      end
    end

    context 'Small_random' do
      it 'Small Random Test, Length = 100' do
        array = [5, 6, 10, 5, 6, 6, 2, 6, 7, 8, 1, 4, 1, 9, 7, 1, 10, 10, 7, 7,
                  2, 1, 6, 1, 2, 3, 1, 5, 5, 9, 6, 7, 5, 7, 5, 3, 10, 10, 9, 8,
                  4, 3, 3, 1, 8, 5, 9, 4, 10, 9, 1, 3, 10, 5, 10, 4, 1, 7, 8, 3,
                  1, 4, 10, 8, 2, 3, 2, 1, 8, 2, 6, 5, 2, 8, 2, 7, 2, 5, 3, 3,
                  10, 9, 4, 9, 3, 4, 9, 7, 2, 10, 3, 3, 8, 4, 3, 1, 1, 6, 3, 7]
        expect(count_distinct_slices(100,array)).to eq 335
      end
    end
  end

  describe 'Performance Tests' do
    context 'Medium_random' do
      it 'Medium Random Test, Length = 500' do
        array = Array.new(500) { rand(1..500) }
        expect(count_distinct_slices(500,array)).to be_a Integer
      end
    end

    context 'Large' do
      it 'Large Tests, Length = ~100,000 1' do
        array = [*1..10]*10000
        expect(count_distinct_slices(100000,array)).to be_a Integer
      end

      it 'Large Tests, Length = ~100,000 2' do
        array = [100]*100000
        expect(count_distinct_slices(100000,array)).to be_a Integer
      end
    end

    context 'Large_range' do
      it 'Large Range Tests, Length = ~100,000 1' do
        array = [*1..100000]
        expect(count_distinct_slices(100000,array)).to be_a Integer
      end

      it 'Large Range Tests, Length = ~100,000 2' do
        array = [*1..40000]*2 + [1..20000]
        expect(count_distinct_slices(40000,array)).to be_a Integer
      end
    end

    context 'Large_random' do
      it 'Large Random Tests, Length = ~100,000 1' do
        array = Array.new(100000) { rand(1..100000) }
        expect(count_distinct_slices(100000,array)).to be_a Integer
      end

      it 'Large Random Tests, Length = ~100,000 2' do
        array = Array.new(100000) { rand(1..1000) }
        expect(count_distinct_slices(1000,array)).to be_a Integer
      end
    end

    context 'Extreme_the_same' do
      it 'All The Same Elements, Length = ~100,000 1' do
        array = [3]*100000
        expect(count_distinct_slices(5,array)).to be_a Integer
      end

      it 'All The Same Elements, Length = ~100,000 2' do
        array = [100000]*100000
        expect(count_distinct_slices(100000,array)).to be_a Integer
      end
    end
  end
end
