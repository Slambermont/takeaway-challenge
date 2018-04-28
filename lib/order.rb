class Order
  attr_reader :basket

  def initialize
    @basket = {}
  end

  def new_order(item, quantity)
    @basket[item] = quantity
  end

  def add_item(item, quantity)
    @basket[item] = quantity
  end
end
