require "./lib/Lesson 7 Stacks And Queues/Nesting/nesting"

describe 'Nesting' do
  describe 'Example Tests' do
    it 'Example1' do
      expect(nesting("(()(())())")).to eq 1
    end

    it 'Example2' do
      expect(nesting("())")).to eq 0
    end
  end

  describe 'Correctness Tests' do
    context 'Negative_match' do
      it 'Invalid Structure, But The Number Of Parentheses Matches 1' do
        expect(nesting("))((")).to eq 0
      end

      it 'Invalid Structure, But The Number Of Parentheses Matches 2' do
        expect(nesting("())(()")).to eq 0
      end
    end

    context 'Empty' do
      it 'Empty String' do
        expect(nesting("")).to eq 1
      end
    end

    context 'Simple_grouped' do
      it 'Simple Grouped Positive Test, Length=22' do
        expect(nesting("()(()())((()())(()()))")).to eq 1
      end

      it 'Simple Grouped Negative Test, Length=22' do
        expect(nesting("()(()()(((()())(()()))")).to eq 0
      end

      it 'Simple Grouped Positive' do
        expect(nesting(")(")).to eq 0
      end
    end

    context 'Small_random' do
      it 'Small Random 1' do
        expect(nesting("())((((()())())()))(")).to eq 0
      end

      it 'Small Random 2' do
        expect(nesting("()()()(()(())()())()")).to eq 1
      end

      it 'Small Random 3' do
        expect(nesting(")())))())(((((()()()")).to eq 0
      end
    end
  end
end
