require 'nesting'

describe 'Nesting' do
  describe 'Example Tests' do
    it 'example: "(()(())())" gives 1' do
      expect(nesting("(()(())())")).to eq 1
    end

    it 'example: "())" gives 0' do
      expect(nesting("())")).to eq 0
    end
  end
end
