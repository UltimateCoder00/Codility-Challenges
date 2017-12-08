require "./lib/Lesson 90 Tasks From Indeed Prime 2015 Challenge/LongestPassword/longest_password"

describe 'LongestPassword' do

  describe 'Example Test' do
    it 'Example' do
      expect(longest_password("test 5 a0A pass007 ?xy1")).to eq 7
    end
  end

  describe 'Correctness Tests' do
    context 'Simple' do
      it 'Short And Simple Tests 1' do
        expect(longest_password("asdf qwerty1 ?!a a vv 91")).to eq 7
      end

      it 'Short And Simple Tests 2' do
        expect(longest_password("123 ??123asd 5ZAQW 3")).to eq 5
      end

      it 'Short And Simple Tests 3' do
        expect(longest_password("asdf! 3ab qqqq adw3")).to eq 3
      end

      it 'Short And Simple Tests 4' do
        expect(longest_password("'v?# rb587 :{1bQ!&)J TD;Wa $Os")).to eq 5
      end
    end
  end
end
