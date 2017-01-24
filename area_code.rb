#check if phone number has chicago area code

puts "please enter your phone number:"

user_phone = gets.chomp
cleaned_phone = ""

user_phone.each_char do |number|
  if number =~ /[0-9]/  
    cleaned_phone << number   
  end  
end  

if cleaned_phone[0..2] == "312" || cleaned_phone[0..2] == "773"
  puts "you have a Chicago area code"
else
  puts "Your area code is from outside of Chicago"
end


# =~ means "if this string matches this regex" so if the character is a number 0-9, it is passed to the new variable, and all special characters or spaces are excluded