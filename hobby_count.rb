#Iterate through hashes of users that have multiple hobbies and multiple favorite colors, count how many things they have in common



people = [{name: "Henry", age: 22, hobbies:["biking", "swimming", "singing", "baking", "reading", "gardening"], favorite_colors:["red", "yellow", "blue"]}, {name: "Alexander", age: 25, hobbies:["painting", "swimming", "baking", "reading"], favorite_colors:["red", "orange", "blue"]},{name: "Cassandra", age: 17, hobbies:["singing", "baking", "biking"], favorite_colors:["blue", "green", "yellow"]},{name: "Alice", age: 30, hobbies:["singing", "baking", "reading"], favorite_colors:["purple", "orange", "yellow"]}]

hobbies_in_common = 0
colors_in_common = []
things_in_common = []


#@all_hobbies = Array.new
# people.each do |person|
#   person[:hobbies].each do |hobby|
#     @all_hobbies << hobby
#   end
# end

# people.each do |person|
#   person[:hobbies]
# end
#^ showing general logic for my own benefit

user1_hobbies = people[0][:hobbies]
user2_hobbies = people[1][:hobbies]
user1_colors = people[0][:favorite_colors]
user2_colors = people[1][:favorite_colors]

hobbies_in_common = user1_hobbies & user2_hobbies
p hobbies_in_common

# using & to compare does an "intersection" of the two arrays, excluding duplicates

user1_colors.each do |color|
  if user2_colors.include?(color)
    colors_in_common << color
  end
end
p colors_in_common

things_in_common = colors_in_common.length.to_i + hobbies_in_common.length.to_i
puts "Total things in common:" + things_in_common.to_s

# p people[0][:hobbies].zip(people[1][:hobbies]).map { |person1, person2| person1 == person2 } 
# ^ this doesn't work because it wants them to be in order & ordering them doesnt account for..
