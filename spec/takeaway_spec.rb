require 'takeaway'

describe TakeAway do
  let(:dishes) { double :dishes }
  let(:menu) { double :menu, dishes: dishes }
  let(:menu_class) { double :menu_class, new: menu, in_menu?: true }
  subject(:takeaway) { TakeAway.new(menu_class) }

  # let(:order) { double :order }
  let(:item) { 'Edemame' }
  let(:fake_item) { 'Pizza' }

  describe '#display_menu' do
    it 'should display the menu' do
      allow(menu_class).to receive(:new).and_return(menu)
      expect(takeaway.display_menu).to eq dishes
    end
  end

  describe '#order' do
    it 'should respond to order method with 2 arguments' do
      expect(takeaway).to respond_to(:order).with(2).arguments
    end
    xit 'should raise an error when item is not on the menu' do
      expect(takeaway.order(fake_item)).to raise_error('This item is not on the menu!')
    end
  end

  describe '#add' do
    it 'should respond to add method with 2 arguments' do
      expect(takeaway).to respond_to(:add).with(2).arguments
    end
    xit 'should raise an error when item is not on the menu' do
      expect(takeaway.add(fake_item)).to raise_error('This item is not on the menu!')
    end
  end
end
