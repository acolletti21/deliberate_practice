#loop through collection of names to see which has the most unique letters

people = [{"first_name" => "Al", "last_name" => "Green"}, {"first_name" => "Tina", "last_name" => "Turner"},{"first_name" => "Aretha", "last_name" => "Franklin"},{"first_name" => "Etta", "last_name" => "James"},{"first_name" => "Alicia", "last_name" => "Keys"},{"first_name" => "Whitney", "last_name" => "Houston"}]

# alphabet = "abcdefghijklmnopqrstuvwxyz"
# most_letters_so_far =[]
# people.each do |person|
#   if person["first_name"].include?(alphabet(0..-1))
#     most_letters_so_far << person["first_name"]
#   end
# end

# people.each do |person|
#   person[:character_count] = {}
#   p person
# end

# people.each do |person|
#   person["first_name"]
# end



# {"first_name" => "Turner", "last_name" => "Green", "character_count" => {t: 1, u: 1, e: 1, r: 2, n: 1}}

name = "rupert"

#make new variable for it after its split so you can iterate over the array
p name.split("")
name.each do |letter|
end
