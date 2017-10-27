require 'brackets'

describe 'Brackets' do
  describe 'Example Tests' do
    it 'example: "{[()()]}" gives 1' do
      expect(brackets("{[()()]}")).to eq 1
    end

    it 'example: "([)()]" gives 0' do
      expect(brackets("([)()]")).to eq 0
    end
  end

  describe 'Correctness Tests' do
    context 'Negative Match' do
      it '"))((" gives 0' do
        expect(brackets("))((")).to eq 0
      end

      it '"())(()" gives 0' do
        expect(brackets("())(()")).to eq 0
      end

      it '"[()}" gives 0' do
        expect(brackets("[()}")).to eq 0
      end

      it '"{([][][])]" gives 0' do
        expect(brackets("{([][][])]")).to eq 0
      end

      it '"{{{{"" gives 0' do
        expect(brackets("{{{{")).to eq 0
      end
    end

    context 'Empty' do
      it '"" gives 1' do
        expect(brackets("")).to eq 1
      end
    end

    context 'Simple Grouped' do
      it '"()(()())((()())(()()))" gives 1' do
        # expect(brackets("()(()())((()())(()()))")).to eq 1
      end

      it '"()(()()(((()())(()()))" gives 1' do
        # expect(brackets("()(()()(((()())(()()))")).to eq 1
      end

      it '")(" gives 0' do
        expect(brackets(")(")).to eq 0
      end

      it '"}{" gives 0' do
        expect(brackets("}{")).to eq 0
      end

      it '"({{({}[]{})}}[]{})" gives 0' do
        # expect(brackets("({{({}[]{})}}[]{})")).to eq 0
      end
    end
  end

  describe 'Performance Tests' do

  end
end
