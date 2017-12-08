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

  context 'Even_letters' do
    it 'All Words Have Even Number Of Letters 1' do
      expect(longest_password("abcd0 abcd00 abcd000 abcd0000")).to eq 7
    end

    it 'All Words Have Even Number Of Letters 2' do
      expect(longest_password("9999 999 00 0")).to eq 3
    end

    it 'All Words Have Even Number Of Letters 3' do
      expect(longest_password("!a?d8 ad8 ?@8")).to eq 3
    end
  end

  context 'Odd_digits' do
    it 'All Words Have Odd Number Of Digits 1' do
      expect(longest_password("ab000 abc000 abcd000 abcde000")).to eq 7
    end

    it 'All Words Have Odd Number Of Digits 2' do
      expect(longest_password("0abd 0ab 0a 0")).to eq 3
    end

    it 'All Words Have Odd Number Of Digits 3' do
      expect(longest_password("!a?d0 ad0 ?@0")).to eq 3
    end
  end

  context 'Odd_length' do
    it "It's Sufficient To Test Validity Of Characters And If Length Of Word Is Odd 1" do
      expect(longest_password("ab0_00 abc_00 ab+000 ab+c00 0a00b 0ad0b 0ab? 04d?")).to eq 5
    end

    it "It's Sufficient To Test Validity Of Characters And If Length Of Word Is Odd 2" do
      expect(longest_password("abc00 ab000 abc000 aded00")).to eq 5
    end
  end

  context 'All_alphanumerical' do
    it 'All Words Contain Only Alphanumerical Characters 1' do
      expect(longest_password("alsdk98jfla a234df38234 a49g3 1283asLd asdf48")).to eq 5
    end

    it 'All Words Contain Only Alphanumerical Characters 2' do
      s = "ad8zSozu5e 3lG1G IDBCHL9Ppb 438 zTi5C 2mM4 uM2hci Qvq zR10177Sh z6eo28 JyVIXRYhvz 232 6t6lRA296 9 z"
      expect(longest_password(s)).to eq 9
    end

    it 'All Words Contain Only Alphanumerical Characters 3' do
      s = "495H7r4 621 9Vcy9w7 3911443 08745724 5647 142 28 9963519 056 18883977 3188641556 780949 097M7771C p28n8RU68 81848028 16"
      expect(longest_password(s)).to eq 9
    end
  end

  context 'Extra_characters' do
    it 'Valid Passwords Joined With Some Invalid Characters 1' do
      expect(longest_password("4 '(:,#>~_,!?_\\]=}|:*__?48tZXRQEmMyGpuEQeOQCG4bVnxk a0b")).to eq 3
    end

    it 'Valid Passwords Joined With Some Invalid Characters 2' do
      s = '{(*\\U073m753M1p 7vzk9X3lloIGvutil yRdiV1SHymCMcCYJ8o4\"*{' + "`-\\,/LpU3vbT"
      expect(longest_password(s)).to eq 17
    end

    it 'Valid Passwords Joined With Some Invalid Characters 3' do
      s = "02864ex7p93DR1jGK0144C1132V )!~)_\\}|?-#0nnWWHRL40vZ2a4"
      expect(longest_password(s)).to eq 27
    end

    it 'Valid Passwords Joined With Some Invalid Characters 4' do
      s = "word_that_suits_requirements_when_we_omit_special_characters1 2another-word-with-special-characters correctAnswerr13579 always_bad_answer!"
      expect(longest_password(s)).to eq 19
    end
  end
end
