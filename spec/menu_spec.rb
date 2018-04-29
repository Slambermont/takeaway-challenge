require 'menu'

describe Menu do
  let(:item) { 'edemame' }
  let(:fake_item) { 'pizza' }

  describe '#initalize' do
    it 'should create a list of dishes' do
      expect(subject.dishes).to eq({
        'Prawn Crackers' => 2,
        'Edemame' => 2,
        'Shanghai Chilli Wonton' => 4,
        'Shanghai XiaoLongBao' => 4,
        'Beef Kimchee Dumplings' => 5,
      })
    end
  end

  describe '#in_menu?' do
    xit 'should return true if item is in the menu' do
      expect(subject.in_menu?(item)).to eq true
    end
    xit 'should return false if item is not in the menu' do
      expect(subject.in_menu?(fake_item)).to eq false
    end
  end
end
