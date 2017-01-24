#convert f to celsius

puts "enter a temperature in Fahrenheit and we'll return it in Celsius"

temp_in_f = gets.chomp.to_i.to_f

temp_in_c = (temp_in_f - 32)* 5 / 9
#temp_in_c = temp_in_c * 5 / 9

puts temp_in_c