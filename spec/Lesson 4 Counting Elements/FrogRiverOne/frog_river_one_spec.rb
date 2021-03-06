require "./lib/Lesson 4 Counting Elements/FrogRiverOne/frog_river_one"

describe 'FrogRiverOne' do
  describe 'Example Tests' do
    it 'Example test: (5, [1, 3, 1, 4, 2, 3, 5, 4]) to 6' do
      expect(frog_river_one(5, [1, 3, 1, 4, 2, 3, 5, 4])).to eq 6
    end
  end

  describe 'Correctness Tests' do
    context "simple" do
      it "simple test" do
        expect(frog_river_one(2, [1, 2])).to eq 1
        expect(frog_river_one(2, [2, 1])).to eq 1
      end
    end

    context "single" do
      it "single element" do
        expect(frog_river_one(1, [1])).to eq 0
        expect(frog_river_one(1, [2])).to eq -1
      end
    end

    context "extreme_frog" do
      it "frog never across the river" do
        expect(frog_river_one(10, [1, 2, 3, 4, 5, 6, 7, 8, 9])).to eq -1
        expect(frog_river_one(8, [3, 6, 8, 5, 7, 2])).to eq -1
        expect(frog_river_one(6, [5, 4, 3, 2, 1])).to eq -1
      end
    end

    context "small_random1" do
      it "3 random permutation, X = 50" do
        array = [*1..49] + [*1..49] + [*1..49]
        array.shuffle
        array << 50
        array << 50
        array << 50
        expect(frog_river_one(50, array)).to eq 147
      end
    end

    context "small_random2" do
      it "5 random permutation, X = 60" do
        array = [*1..59] + [*1..59] + [*1..59] + [*1..59] + [*1..59]
        array.shuffle
        array << 60
        array << 60
        array << 60
        array << 60
        array << 60
        expect(frog_river_one(60, array)).to eq 295
      end
    end

    context "extreme_leaves" do
      it "all leaves in the same place" do
        expect(frog_river_one(10, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])).to eq 9
        expect(frog_river_one(15, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15])).to eq 14
      end
    end
  end

  describe 'Performance Tests' do
    context "medium_random" do
      it "6 and 2 random permutations, X = ~5,000" do
        array = [*1..4999]
        array.shuffle
        array << 5000
        expect(frog_river_one(5000, array)).to eq 4999
      end
    end

    context "medium_range" do
      it "arithmetic sequences, X = 5,000" do
        array = [*1..5000]
        expect(frog_river_one(5000, array)).to eq 4999
      end
    end

    context "large_random" do
      it "10 and 100 random permutation, X = ~10,000" do
        array = [*1..9999]
        array.shuffle
        array << 10000
        expect(frog_river_one(10000, array)).to eq 9999
      end
    end

    context "large_permutation" do
      it "permutation tests" do
        array = [*1..100000]
        expect(frog_river_one(100000, array)).to eq 99999

        array2 = [*1..99999]
        array2.shuffle
        array2 << 100000
        expect(frog_river_one(100000, array2)).to eq 99999
      end
    end

    context "large_range" do
      it "arithmetic sequences, X = 30,000" do
        array = [*1..30000]
        expect(frog_river_one(30000, array)).to eq 29999
      end
    end
  end
end
