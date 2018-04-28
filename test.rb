menu = Hash.new

menu['chicken'] = 2
menu['beef'] = 3

menu = menu.each_with_index do |(key, value), index|
  puts "#{index+1}. #{key}, £#{value}"
end
