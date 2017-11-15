require "./lib/Lesson 4 Counting Elements/MaxCounters/max_counter"

describe 'MaxCounters' do
  describe 'Example Tests' do
    it 'Example test: (5, [3,4,4,6,1,4,4]) to [3,2,2,4,2]' do
      expect(max_counter(5, [3,4,4,6,1,4,4])).to eq [3,2,2,4,2]
    end
  end

  describe 'Correctness Tests' do
    context "extreme_small" do
      it "all max_counter operations" do
        expect(max_counter(4, [5,5,5,5])).to eq [0,0,0,0]
      end
    end

    context "single" do
      it "only one counter" do
        expect(max_counter(3, [1])).to eq [1,0,0]
        expect(max_counter(1, [2,1,2,1,2,1,2])).to eq [3]
      end
    end

    context "small_random1" do
      it "small random test, 6 max_counter operations" do
        expect(max_counter(3, [1,4,4,4,4,4,4,2])).to eq [1,2,1]
      end
    end

    context "small_random2" do
      it "small random test, 10 max_counter operations" do
        expect(max_counter(2, [1,3,2,3,3,3,3,3,3,3,3,3,1])).to eq [3,2]
      end
    end
  end

  describe 'Performance Tests' do
    context "medium_random1" do
      it "medium random test, 50 max_counter operations" do
        array1 = Array.new(50) { rand(1..100000) }
        number = array1.max
        array = [number+1]*50 + array1
        array.shuffle!
        expect(max_counter(number, array)).to be_a Array
      end
    end

    context "medium_random2" do
      it "medium random test, 500 max_counter operations" do
        array1 = Array.new(500) { rand(1..100000) }
        number = array1.max
        array = [number+1]*500 + array1
        array.shuffle!
        expect(max_counter(number, array)).to be_a Array
      end
    end

    context "large_random1" do
      it "large random test, 2120 max_counter operations" do
        array1 = Array.new(97880) { rand(1..100000) }
        number = array1.max
        array = [number+1]*2120 + array1
        array.shuffle!
        expect(max_counter(number, array)).to be_a Array
      end
    end

    context "large_random2" do
      it "large random test, 10000 max_counter operations" do
        array1 = Array.new(90000) { rand(1..100000) }
        number = array1.max
        array = [number+1]*10000 + array1
        array.shuffle!
        expect(max_counter(number, array)).to be_a Array
      end
    end

    context "extreme_large" do
      it "all max_counter operations 1" do
        number = 1000000
        array = [number+1]*100000
        expect(max_counter(number, array)).to be_a Array
      end

      it "all max_counter operations 2" do
        random_number = rand(1000000) + 1
        array = [random_number+1]*1000000
        expect(max_counter(random_number, array)).to be_a Array
      end

      it "no max_counters" do
        array = Array.new(100000) { rand(1..100000) }
        expect(max_counter(1000000, array)).to be_a Array
      end
    end
  end
end
