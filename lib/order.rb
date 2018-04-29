class Order
  attr_reader :basket

  def initialize
    @basket = {}
  end

  def new_order(item, quantity = 1)
    @basket = {}
    @basket[item.downcase.capitalize] = quantity
  end

  def add_item(item, quantity = 1)
    if @basket.key?(item.downcase.capitalize)
      @basket[item.downcase.capitalize] = @basket[item.downcase.capitalize]+quantity
    else
    @basket[item.downcase.capitalize] = quantity
    end
  end

end
