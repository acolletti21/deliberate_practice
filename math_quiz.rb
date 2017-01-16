# random math problem, if user puts correct answer put correct etc.

prob1 = {"problem" => "What is 2 + 2?", "answer" => 4}
prob2 = {"problem" => "What is 6 * 10?", "answer" => 60}
prob3 = {"problem" => "What is 9/3?", "answer" => 3}
prob4 = {"problem" => "What is 10 - 5?", "answer" => 5}


problems = [prob1, prob2, prob3, prob4].shuffle




problems.each do |problem, answer|
  puts problem["problem"]
  puts "Please enter your answer"
    user_answer= gets.chomp.to_i
    if problem["answer"] == user_answer.to_i
      puts "Correct!"
    else 
      puts "Incorrect."
    end
end
  