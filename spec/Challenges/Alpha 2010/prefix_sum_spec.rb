require './lib/Challenges/Alpha 2010/prefix_set'

describe 'PrefixSet' do
  describe 'Example Test' do
    context 'Example1' do
      it 'Returns Result For Example Test' do
        expect(prefix_set([2, 2, 1, 0, 1])).to eq 3
      end
    end
  end
end
