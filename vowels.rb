#an array of name hashes, collect all that have first names starting with a vowel


people = [{"first_name" => "Al", "last_name" => "Green"}, {"first_name" => "Tina", "last_name" => "Turner"},{"first_name" => "Aretha", "last_name" => "Franklin"},{"first_name" => "Etta", "last_name" => "James"},{"first_name" => "Alicia", "last_name" => "Keys"},{"first_name" => "Whitney", "last_name" => "Houston"}]

@vowel_names = []
people.each do |person|
  if person["first_name"].chr == "A" || 
    person["first_name"].chr == "E" || 
    person["first_name"].chr == "I" || 
    person["first_name"].chr == "O" || 
    person["first_name"].chr == "U"
      @vowel_names << person["first_name"] + " " + person["last_name"]
  end
end

puts @vowel_names.join(", ")



