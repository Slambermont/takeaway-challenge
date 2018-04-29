class Menu
  attr_reader :dishes

  def initialize
    @dishes = {
      'Prawn Crackers' => 2,
      'Edemame' => 2,
      'Shanghai Chilli Wonton' => 4,
      'Shanghai XiaoLongBao' => 4,
      'Beef Kimchee Dumplings' => 5,
    }
  end

  # def in_menu?(item)
  #   @dishes.key?(item.downcase.capitalize)
  # end
end
