### guess scrambled word

#scramble words and have user input guess

words = ["yellow", "elephant", "coyote", "figurines", "amazing", "continental"]

words.each do |word|
  p word.split("").shuffle.join
  puts "guess the word:"
  guess = gets.chomp 
  if guess == word 
    puts "correct!"
  else 
    puts "incorrect"
  end
end