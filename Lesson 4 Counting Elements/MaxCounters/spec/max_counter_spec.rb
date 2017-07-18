require 'max_counter'

describe 'Max Counter' do
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

      end
    end

    context "medium_random2" do
      it "medium random test, 500 max_counter operations" do

      end
    end

    context "large_random1" do
      it "large random test, 2120 max_counter operations" do

      end
    end

    context "large_random2" do
      it "large random test, 10000 max_counter operations" do

      end
    end

    context "extreme_large" do
      it "all max_counter operations" do

      end
    end
  end
end
