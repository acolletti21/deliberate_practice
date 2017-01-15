# guessing game, let a user pick an option 1-3 if, if they match the random answer they get back winner// or game of chance that returns winner or loser after automatically generating

# 1 create an array with the letters a,b,c in a random order
# 2 allow users to input those letters and put them into an array
# 3 loop through both arrays to see if they are equal or not
# if equal, put winner, if not, put try again

#   def letters(arr)
#     arr.shuffle
#   end

# first = gets.chomp
# second = gets.chomp
# third = gets.chomp

#   def user_guess
#     arr = ([first, second, third])
#   end

#   def compare
    
#   end

# # runner code

# p letters (["a", "b", "c"])

letters = ["a", "b", "c"]

computer_answer = letters.shuffle

user_first = gets.chomp
user_second = gets.chomp
user_third = gets.chomp

user_answer = [user_first, user_second, user_third]

if user_answer == computer_answer
  puts "You guessed correctly"
  else
  puts "Try again."
end

p computer_answer
p user_answer
