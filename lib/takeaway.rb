require_relative 'menu'
require_relative 'order'

class TakeAway

  def initialize(menu_class = Menu)
    @menu_class = menu_class
    @order = Order.new
  end

  def display_menu
    menu = @menu_class.new
    menu.dishes
  end

  def order(item, quantity = 1)
    @order.new_order(item, quantity)
  end

  def add(item, quantity = 1)
    @order.add_item(item, quantity)
  end

end
