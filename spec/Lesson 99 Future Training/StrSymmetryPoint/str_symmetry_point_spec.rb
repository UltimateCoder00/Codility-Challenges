require "./lib/Lesson 99 Future Training/StrSymmetryPoint/str_symmetry_point"

describe 'StrSymmetryPoint' do

  describe 'Example Tests' do
    it 'Example 1' do
      expect(str_symmetry_point("racecar")).to eq 3
    end

    it 'Example 2' do
      expect(str_symmetry_point("x")).to eq 0
    end
  end

  describe 'Correctness Tests' do
    context 'Extreme_empty_or_one' do
      it 'Empty' do
        expect(str_symmetry_point("")).to eq -1
      end

      it 'One Character Strings' do
        expect(str_symmetry_point("a")).to eq 0
      end
    end
  end
end
