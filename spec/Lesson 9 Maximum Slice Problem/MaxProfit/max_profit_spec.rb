require "./lib/Lesson 9 Maximum Slice Problem/MaxProfit/max_profit"

describe 'MaxProfit' do

  describe 'Example Tests' do
    it 'Example: [23171,21011,21123,21366,21013,21367] to 356' do
      expect(max_profit([23171,21011,21123,21366,21013,21367])).to eq 356
    end
  end

  describe 'Correctness Tests' do
    context 'Simple_1' do
      it 'V-pattern Sequence, Length=7' do
        expect(max_profit([4, 3, 2, 1, 2, 3, 4])).to eq 3
      end
    end

    context 'Simple_desc' do
      it 'Descending Sequence, Length=5' do
        expect(max_profit([5, 4, 3, 2, 1])).to eq 0
      end

      it 'Ascending Sequence, Length=5' do
        expect(max_profit([1, 2, 3, 4, 5])).to eq 4
      end
    end

    context 'Simple_empty' do
      it 'Empty Sequence' do
        expect(max_profit([0])).to eq 0
      end

      it '[0, 200000] Sequence' do
        expect(max_profit([0, 200000])).to eq 200000
      end
    end

    context 'Two_hills' do
      it 'Two Increasing Subsequences' do
        expect(max_profit([1000, 100000, 0, 1000, 2000, 3000])).to eq 99000
      end
    end

    context 'Max_profit_after_max_and_before_min' do
      it 'Max Profit Is After Global Maximum And Before Global Minimum' do
        expect(max_profit([8, 9, 3, 6, 1, 2])).to eq 3
      end
    end
  end

  describe 'Performance  Tests' do
    context 'Medium_1 ' do
      it 'Large Value (99) Followed By Short V-pattern (Values From [1..5]) Repeated 100 Times' do
        array = [99] + [5,4,3,2,1,2,3,4,5]*100
        expect(max_profit(array)).to eq 4
      end
    end

    context 'Large_1 ' do
      it 'Large Value (99) Followed By Short Pattern (Values From [1..1]) Repeated 10K Times' do
        array = Array.new(10000) { rand(0..200000) }
        expect(max_profit(array)).to be_a Integer
      end
    end

    context 'Large_2 ' do
      it 'Chaotic Sequence Of 200K Values From [100K..120K], Then 200K Values From [0..100K]' do
        array = Array.new(200000) { rand(100000..120000) } + Array.new(200000) { rand(0..100000) }
        expect(max_profit(array)).to be_a Integer
      end
    end
  end
end
