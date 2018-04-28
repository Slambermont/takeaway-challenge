class Order
  attr_reader :basket

  def initialize
    @basket = {}
  end

  def new_order(item, quantity = 1)
    @basket = {}
    @basket[item] = quantity
  end

  def add_item(item, quantity = 1)
    @basket[item] = quantity
  end
end
