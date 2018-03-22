require "./lib/Lesson 91 Tasks From Indeed Prime 2016 Challenge/HilbertMaze/hilbert_maze"

describe 'HilbertMaze' do

  describe 'Example Tests' do
    it 'Example 1' do
      expect(hilbert_maze(1, 2, 1, 3, 4)).to eq 8
    end

    it 'Example 2' do
      expect(hilbert_maze(2, 2, 5, 6, 6)).to eq 7
    end

    it 'Example 3' do
      expect(hilbert_maze(3, 6, 6, 10, 13)).to eq 39
    end
  end
end
