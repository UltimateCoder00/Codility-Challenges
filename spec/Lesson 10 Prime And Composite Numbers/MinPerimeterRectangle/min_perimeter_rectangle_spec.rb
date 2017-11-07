require "./lib/Lesson 10 Prime And Composite Numbers/MinPerimeterRectangle/min_perimeter_rectangle"

describe 'MinPerimeterRectangle' do

  describe 'Example Tests' do
    it 'Example: 30 to 22' do
      expect(min_perimeter_rectangle(30)).to eq 22
    end
  end

  describe 'Correctness Tests' do
    context 'Extreme_min' do
      it 'N=1 to 4' do
        expect(min_perimeter_rectangle(1)).to eq 4
      end
    end

    context 'Simple1' do
      it 'N=36 to 24' do
        expect(min_perimeter_rectangle(36)).to eq 24
      end
    end

    context 'Simple2' do
      it 'N=48 to 28' do
        expect(min_perimeter_rectangle(48)).to eq 28
      end
    end
  end
end
