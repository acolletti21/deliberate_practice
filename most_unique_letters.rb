#loop through collection of names to see which has the most unique letters

people = [{"first_name" => "Al", "last_name" => "Green"}, {"first_name" => "Tina", "last_name" => "Turner"},{"first_name" => "Aretha", "last_name" => "Franklin"},{"first_name" => "Etta", "last_name" => "James"},{"first_name" => "Alicia", "last_name" => "Keys"},{"first_name" => "Whitney", "last_name" => "Houston"}]

most_letters_so_far = 0
most_unique_name = ""

people.each do |person|
  #name_array = person["first_name"].split("") + person["last_name"].split("")
  letter_count_array = person["first_name"].chars.group_by(&:chr).map { |letter, occurence| [letter, occurence.size] } + person["last_name"].chars.group_by(&:chr).map { |letter, occurence| [letter, occurence.size] }
      if letter_count_array.count > most_letters_so_far
        most_letters_so_far = letter_count_array.count
        most_unique_name = person["first_name"]
      end
end

p most_unique_name
p most_letters_so_far

#chars is an iterator over the individual characters in a string. group_by(&:chr) groups by the #character and returns a hash where each character key has a value of an array of the same #character occurrences. map converts each hash to the character and the size of the array