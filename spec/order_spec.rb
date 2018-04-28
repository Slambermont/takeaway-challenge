require 'order'

describe Order do
  let(:item) {double :item}
  let(:another_item) { double :another_item }

  describe '#new_order' do
    it 'should add item and quantity to the basket' do
      subject.new_order(item, 2)
      expect(subject.basket).to eq({item=>2})
    end
  end

  describe '#add_item' do
    it 'should add item and quantity to the basket' do
      subject.new_order(item, 2)
      subject.add_item(another_item, 1)
      expect(subject.basket).to eq({item=>2, another_item=>1})
    end
  end
end
