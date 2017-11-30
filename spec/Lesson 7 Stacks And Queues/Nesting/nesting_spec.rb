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

  describe 'Performance Tests' do
    context 'Large1' do
      it 'Simple Large Positive And Negative Test, 10K Or 10K+1 ("s Followed By 10K )"s 1' do
        expect(nesting("")).to eq 1
      end

      it 'Simple Large Positive And Negative Test, 10K Or 10K+1 ("s Followed By 10K )"s 2' do
        expect(nesting("")).to eq 1
      end

      it 'Simple Large Positive And Negative Test, 10K Or 10K+1 ("s Followed By 10K )"s 3' do
        expect(nesting(")(")).to eq 0
      end
    end

    context 'Large_full_ternary_tree' do
      it 'Tree Of The Form T=(TTT) And Depth 11, Length=177K+ 1' do
        expect(nesting("")).to eq 1
      end

      it 'Tree Of The Form T=(TTT) And Depth 11, Length=177K+ 2' do
        expect(nesting(")(")).to eq 0
      end
    end

    context 'Multiple_full_binary_trees' do
      it 'Sequence Of Full Trees Of The Form T=(TT), Depths [1..10..1], With/Without Unmatched ")" At The End, Length=49K+ 1' do
        expect(nesting("")).to eq 1
      end

      it 'Sequence Of Full Trees Of The Form T=(TT), Depths [1..10..1], With/Without Unmatched ")" At The End, Length=49K+ 2' do
        expect(nesting("")).to eq 1
      end

      it 'Sequence Of Full Trees Of The Form T=(TT), Depths [1..10..1], With/Without Unmatched ")" At The End, Length=49K+ 3' do
        expect(nesting(")(")).to eq 0
      end
    end

    context 'Broad_tree_with_deep_paths' do
      it 'String Of The Form (TTT...T) Of 300 T"s, Each T Being "(((...)))" Nested 200-Fold, Length=1 Million 1' do
        expect(nesting("")).to eq 1
      end

      it 'String Of The Form (TTT...T) Of 300 T"s, Each T Being "(((...)))" Nested 200-Fold, Length=1 Million 2' do
        expect(nesting(")(")).to eq 0
      end
    end
  end
end
