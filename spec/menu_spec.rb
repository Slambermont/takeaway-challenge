require 'menu'

describe Menu do
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
end
