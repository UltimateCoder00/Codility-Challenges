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

  context 'One_character' do
    it 'One Character Words 1' do
      expect(longest_password("a")).to eq -1
    end

    it 'One Character Words 2' do
      expect(longest_password("0")).to eq 1
    end

    it 'One Character Words 3' do
      expect(longest_password("#")).to eq -1
    end

    it 'One Character Words 4' do
      expect(longest_password("[ F")).to eq -1
    end

    it 'One Character Words 5' do
      expect(longest_password("W i k ? 5 + a")).to eq 1
    end
  end

  context 'One_word' do
    it 'Tests That Contains One Word only 1' do
      expect(longest_password("zaq123edc")).to eq 9
    end

    it 'Tests That Contains One Word only 2' do
      expect(longest_password("zaq!2#edc")).to eq -1
    end

    it 'Tests That Contains One Word only 3' do
      expect(longest_password("zxcasdqwe123")).to eq -1
    end

    it 'Tests That Contains One Word only 4' do
      expect(longest_password("4adf4dsk45")).to eq -1
    end

    it 'Tests That Contains One Word only 5' do
      expect(longest_password("qWeRtYuIoP97531")).to eq 15
    end

    it 'Tests That Contains One Word only 6' do
      expect(longest_password('<\"w-w9@s&!^p>XWBqzDYuUBPF:Z@P1')).to eq -1
    end

    it 'Tests That Contains One Word only 7' do
      expect(longest_password("d7K758nU1K42d214804s53oJC5r289w")).to eq 31
    end
  end
end
