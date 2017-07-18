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

      end
    end

    context "single" do
      it "only one counter" do

      end
    end

    context "small_random1" do
      it "small random test, 6 max_counter operations" do

      end
    end

    context "small_random2" do
      it "small random test, 10 max_counter operations" do

      end
    end
  end
end
