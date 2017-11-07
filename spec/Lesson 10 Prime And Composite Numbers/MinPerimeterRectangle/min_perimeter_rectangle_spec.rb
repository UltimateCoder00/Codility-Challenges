require "./lib/Lesson 10 Prime And Composite Numbers/MinPerimeterRectangle/min_perimeter_rectangle"

describe 'MinPerimeterRectangle' do

  describe 'Example Tests' do
    it 'Example: 30 to 22' do
      expect(min_perimeter_rectangle(30)).to eq 22
    end
  end

  describe 'Correctness Tests' do
    context 'Extreme_min ' do
      it 'N=1 to 4' do
        expect(min_perimeter_rectangle(1)).to eq 4
      end
    end
  end
end
