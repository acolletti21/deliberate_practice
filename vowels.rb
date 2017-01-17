#an array of name hashes, collect all that have names starting with a vowel

people = [{first_name => "Al", last_name=> "Green"}, {first_name => "Tina", last_name=> "Turner"},{first_name => "Aretha", last_name=> "Franklin"},{first_name => "Etta", last_name=> "James"},{first_name => "Alicia", last_name=> "Keys"},{first_name => "Whitney", last_name=> "Houston"}]



people.to_a.each do |person|
 if first_name.chr == "a"
    puts "#{person[:first_name]} #{person[:last_name]}"
  end
end