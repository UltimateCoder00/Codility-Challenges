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

  describe 'Example Tests' do
    context 'Negative_match' do
      it 'Invalid Structure, But The Number Of Parentheses Matches 1' do
        expect(nesting("))((")).to eq 0
      end

      it 'Invalid Structure, But The Number Of Parentheses Matches 2' do
        expect(nesting("())(()")).to eq 0
      end
    end
  end
end
