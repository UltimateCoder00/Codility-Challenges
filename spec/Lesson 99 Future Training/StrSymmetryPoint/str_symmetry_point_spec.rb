require "./lib/Lesson 99 Future Training/StrSymmetryPoint/str_symmetry_point"

describe 'StrSymmetryPoint' do

  describe 'Example Test' do
    it 'Example 1' do
      expect(str_symmetry_point("racecar")).to eq 3
    end

    it 'Example 2' do
      expect(str_symmetry_point("x")).to eq 0
    end
  end
end
