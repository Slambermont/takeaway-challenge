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

  describe '#order' do
    let(:order) { double :order }
    let(:item) { double :item }

    it 'should respond to order method with 2 arguments' do
      expect(takeaway).to respond_to(:order).with(2).arguments
    end
  end

  describe '#add' do
    it 'should respond to add method with 2 arguments' do
      expect(takeaway).to respond_to(:add).with(2).arguments
    end
  end
end
