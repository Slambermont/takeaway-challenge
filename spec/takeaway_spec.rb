require 'takeaway'

describe TakeAway do
  let(:dishes) { double :dishes }
  let(:menu) { double :menu, dishes: dishes }
  let(:menu_class) { double :menu_class, new: menu }
  subject(:takeaway) { TakeAway.new(menu_class) }

  describe '#display_menu' do
    it 'should display the menu' do
      allow(menu_class).to receive(:new).and_return(menu)
      expect(takeaway.display_menu).to eq dishes
    end
  end
end
