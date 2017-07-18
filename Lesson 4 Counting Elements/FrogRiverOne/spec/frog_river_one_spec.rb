require 'frog_river_one'

describe 'Frog River One' do
  describe 'Example Tests' do
    it 'Example test: (5, [1, 3, 1, 4, 2, 3, 5, 4]) to 6' do
      expect(frog_river_one(5, [1, 3, 1, 4, 2, 3, 5, 4])).to eq 6
    end
  end

  describe 'Correctness Tests' do
    context "simple" do
      it "simple test" do
        expect(frog_river_one(2, [1, 2])).to eq 1
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
end
