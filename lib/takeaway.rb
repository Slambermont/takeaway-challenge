require './lib/menu.rb'

class TakeAway

  def initialize(menu_class = Menu)
    @menu_class = menu_class
  end

  def display_menu
    menu = @menu_class.new
    menu.dishes
  end

end
