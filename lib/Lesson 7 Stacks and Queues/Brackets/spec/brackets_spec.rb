require 'brackets'

describe 'Brackets' do
  describe 'Example Tests' do
    it 'example: {[()()]} gives 1' do
      expect(brackets("{[()()]}")).to eq 1
    end

    it 'example: ([)()] gives 0' do
      expect(brackets("([)()]")).to eq 0
    end
  end
end
