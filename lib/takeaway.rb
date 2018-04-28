require './lib/menu.rb'

class TakeAway

  def initialize(menu_class = Menu)
    @menu_class = menu_class
    @order = Order.new
  end

  def display_menu
    menu = @menu_class.new
    menu.dishes
  end

  def order(item, quantity)
    @order.new_order(item, quantity)
  end

end
