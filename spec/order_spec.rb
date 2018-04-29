require 'order'

describe Order do
  let(:item) { 'edemame' }
  let(:another_item) { 'prawn crackers' }
  let(:fake_item) { 'pizza' }

  describe '#new_order' do
    it 'should add item and quantity to the basket' do
      subject.new_order(item, 2)
      expect(subject.basket).to eq({ 'Edemame' => 2 })
    end
    it 'should overwrite previous basket if new order is called' do
      subject.new_order(item, 2)
      subject.new_order(another_item, 1)
      expect(subject.basket).to eq({ 'Prawn crackers' => 1 })
    end
    it 'should default to 1 item when no amount is given' do
      subject.new_order(item)
      expect(subject.basket).to eq({ 'Edemame' => 1 })
    end
  end

  describe '#add_item' do
    it 'should add item and quantity to the basket' do
      subject.new_order(item, 2)
      subject.add_item(another_item, 1)
      expect(subject.basket).to eq({ 'Edemame' => 2, 'Prawn crackers' => 1 })
    end
    it 'should default to 1 item when no amount is given' do
      subject.add_item(item)
      expect(subject.basket).to eq({ 'Edemame' => 1 })
    end
    it 'should add number of items to existing if item is already in the basket' do
      subject.new_order(item, 2)
      subject.add_item(item, 1)
      expect(subject.basket).to eq({ 'Edemame' => 3 })
    end
  end

end
